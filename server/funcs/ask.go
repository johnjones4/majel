package funcs

import (
	"context"
	"fmt"
	"main/core"

	"github.com/sashabaranov/go-openai"
)

func (f *FuncsImpl) Ask(ctx context.Context, query string) (core.FuncAskResult, error) {
	resp, err := f.OpenAIClient.CreateEmbeddings(ctx, openai.EmbeddingRequestStrings{
		Input: []string{query},
		Model: openai.AdaEmbeddingV2,
	})
	if err != nil {
		return core.FuncAskResult{}, err
	}

	results, err := f.Index.Search(ctx, resp.Data[0].Embedding, 100)
	if err != nil {
		return core.FuncAskResult{}, err
	}

	bestResults := make([]core.Document, 0)
	for _, result := range results {
		if result.Distance < 0.2 {
			bestResults = append(bestResults, result.Document)
		}
	}

	if len(bestResults) == 0 {
		for i := 0; i < 3 && i < len(results); i++ {
			bestResults = append(bestResults, results[i].Document)
		}
	}

	var result core.FuncAskResult
	result.URLs = make([]string, len(bestResults))
	for i, res := range bestResults {
		result.URLs[i] = res.URL
	}

	req := openai.ChatCompletionRequest{
		Model:    openai.GPT3Dot5Turbo,
		Messages: make([]openai.ChatCompletionMessage, len(bestResults)+1),
	}

	for i, doc := range bestResults {
		doc, err := f.Sourcer.Retreive(ctx, &doc)
		if err != nil {
			return core.FuncAskResult{}, err
		}

		req.Messages[i] = openai.ChatCompletionMessage{
			Role:    "system",
			Content: fmt.Sprintf("Content: \"%s\"\n\nURL: \"%s\"", doc.TextContents, doc.URL),
		}
	}

	req.Messages[len(bestResults)] = openai.ChatCompletionMessage{
		Role:    "user",
		Content: fmt.Sprintf("Use the previous messages to anser the following question and provide any relevant URLs: \"%s\"", query),
	}

	res, err := f.OpenAIClient.CreateChatCompletion(ctx, req)
	if err != nil {
		return core.FuncAskResult{}, err
	}

	result.Answer = res.Choices[0].Message.Content

	return result, nil
}

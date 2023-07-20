package funcs

import (
	"context"
	"main/core"

	"github.com/sashabaranov/go-openai"
)

func (f *FuncsImpl) Search(ctx context.Context, query string) (core.FuncSearchResult, error) {
	resp, err := f.OpenAIClient.CreateEmbeddings(ctx, openai.EmbeddingRequestStrings{
		Input: []string{query},
		Model: openai.AdaEmbeddingV2,
	})
	if err != nil {
		return core.FuncSearchResult{}, err
	}

	results, err := f.Index.Search(ctx, resp.Data[0].Embedding, 100)
	if err != nil {
		return core.FuncSearchResult{}, err
	}

	body := core.FuncSearchResult{
		Results: make([]core.FuncSearchResultItem, len(results)),
	}
	for i, r := range results {
		body.Results[i].Distance = r.Distance
		body.Results[i].DocumentMetadata = r.Document.DocumentMetadata
	}

	return body, nil
}

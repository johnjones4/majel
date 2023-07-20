package sources

import (
	"context"
	"errors"
	"log"
	"main/core"
	"time"

	"github.com/sashabaranov/go-openai"
)

type CoreSourcer struct {
	Sources      []core.Source
	Parsers      []core.Parser
	OpenAIClient *openai.Client
	Index        core.Index
}

func (cc *CoreSourcer) Retreive(ctx context.Context, doc *core.Document) (core.RawDocument, error) {
	for _, sourcer := range cc.Sources {
		if sourcer.CanSource(doc) {
			return sourcer.Retreive(ctx, cc.Parsers, doc)
		}
	}
	return core.RawDocument{}, errors.New("document not supported")
}

func (cc *CoreSourcer) Start(ctx context.Context) {
	for {
		select {
		case <-ctx.Done():
			return
		default:
			docs := make(chan *core.RawDocument, 256)

			for _, crawler := range cc.Sources {
				go func() {
					for {
						err := crawler.Crawl(ctx, cc.Parsers, docs)
						if err != nil {
							log.Println(err)
							return
						}
						time.Sleep(time.Hour)
					}
				}()
			}

		docqueue:
			for {
				select {
				case <-ctx.Done():
					break docqueue
				case rawdoc := <-docs:
					//todo check date
					log.Println(rawdoc.DocumentMetadata)
					doc := core.Document{
						DocumentMetadata: rawdoc.DocumentMetadata,
					}
					resp, err := cc.OpenAIClient.CreateEmbeddings(ctx, openai.EmbeddingRequestStrings{
						Input: []string{rawdoc.TextContents},
						Model: openai.AdaEmbeddingV2,
					})
					if err != nil {
						log.Println(err)
						continue
					}

					for i := range resp.Data[0].Embedding {
						doc.Embeddings[i] = resp.Data[0].Embedding[i]
					}

					if err != nil {
						log.Println(err)
						continue
					}

					err = cc.Index.Upsert(ctx, &doc)
					if err != nil {
						log.Println(err)
						continue
					}
				}
			}
		}
	}
}

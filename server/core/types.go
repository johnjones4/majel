package core

import (
	"context"
	"time"
)

type DocumentMetadata struct {
	Source   string    `json:"source"`
	Key      string    `json:"key"`
	Modified time.Time `json:"modified"`
	URL      string    `json:"url"`
}

type RawDocument struct {
	DocumentMetadata
	RawContents  []byte
	TextContents string
}

type Document struct {
	DocumentMetadata
	ID         string
	Embeddings [1536]float32
}

type SearchResult struct {
	Document Document
	Distance float32
}

type Index interface {
	Get(ctx context.Context, source string, key string) (Document, error)
	Upsert(ctx context.Context, file *Document) error
	Search(ctx context.Context, embeddings []float32, limit int) ([]SearchResult, error)
}

type Parser func(doc *RawDocument) (bool, error)

type Source interface {
	CanSource(doc *Document) bool
	Retreive(ctx context.Context, parsers []Parser, doc *Document) (RawDocument, error)
	Crawl(ctx context.Context, parsers []Parser, documents chan *RawDocument) error
}

type FuncSearchResultItem struct {
	DocumentMetadata
	Distance float32 `json:"distance"`
}

type FuncSearchResult struct {
	Results []FuncSearchResultItem `json:"results"`
}

type FuncAskResult struct {
	Answer string   `json:"answer"`
	URLs   []string `json:"urls"`
}

type Funcs interface {
	Search(ctx context.Context, query string) (FuncSearchResult, error)
	Ask(ctx context.Context, query string) (FuncAskResult, error)
}

package index

import (
	"encoding/json"
	"main/core"

	"github.com/jackc/pgx/v4"
)

func unmarshalRow(row pgx.Row) (core.Document, error) {
	var doc core.Document
	var embeddingsStr string

	err := row.Scan(&doc.ID, &doc.Source, &doc.URL, &doc.Key, &doc.Modified, &embeddingsStr)
	if err != nil {
		return core.Document{}, err
	}

	err = json.Unmarshal([]byte(embeddingsStr), &doc.Embeddings)
	if err != nil {
		return core.Document{}, err
	}

	return doc, nil
}

package index

import (
	"context"
	"encoding/json"
	"main/core"
)

func (i *PGIndex) Search(ctx context.Context, embeddings []float32, limit int) ([]core.SearchResult, error) {
	embeddingsjson, err := json.Marshal(embeddings)
	if err != nil {
		return nil, err
	}
	rows, err := i.pool.Query(ctx, "SELECT id, source, url, dockey, modified, embedding, embedding <=> $1 as distance FROM idx ORDER BY distance LIMIT $2", string(embeddingsjson), limit)
	if err != nil {
		return nil, err
	}
	defer rows.Close()
	files := make([]core.SearchResult, 0)
	for rows.Next() {
		var doc core.SearchResult
		var embeddingsStr string

		err := rows.Scan(&doc.Document.ID, &doc.Document.Source, &doc.Document.URL, &doc.Document.Key, &doc.Document.Modified, &embeddingsStr, &doc.Distance)
		if err != nil {
			return nil, err
		}

		err = json.Unmarshal([]byte(embeddingsStr), &doc.Document.Embeddings)
		if err != nil {
			return nil, err
		}

		files = append(files, doc)
	}
	return files, nil
}

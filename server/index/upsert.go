package index

import (
	"context"
	"encoding/json"
	"main/core"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v4"
)

func (i *PGIndex) Upsert(ctx context.Context, file *core.Document) error {
	if file.ID == "" {
		err := i.pool.QueryRow(ctx, "SELECT id FROM idx WHERE source = $1 AND dockey = $2", file.Source, file.Key).Scan(&file.ID)
		if err != nil && err != pgx.ErrNoRows {
			return err
		}
	}
	embeddings, err := json.Marshal(file.Embeddings)
	if err != nil {
		return err
	}
	if file.ID == "" {
		file.ID = uuid.NewString()
		_, err := i.pool.Exec(ctx, "INSERT INTO idx (id, source, url, dockey, modified, embedding) VALUES ($1, $2, $3, $4, $5, $6)", file.ID, file.Source, file.URL, file.Key, file.Modified, string(embeddings))
		if err != nil {
			return err
		}
	} else {
		_, err := i.pool.Exec(ctx, "UPDATE idx SET modified = $1, embedding = $2 WHERE id = $3", file.Modified, string(embeddings), file.ID)
		if err != nil {
			return err
		}
	}
	return nil
}

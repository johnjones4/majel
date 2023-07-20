package index

import (
	"context"
	"main/core"
)

func (i *PGIndex) Get(ctx context.Context, id string) (core.Document, error) {
	row := i.pool.QueryRow(ctx, "SELECT id, source, url, dockey, modified, embedding FROM idx WHERE id = $1", id)
	return unmarshalRow(row)
}

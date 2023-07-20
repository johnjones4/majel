package index

import (
	"context"
	"main/core"
)

func (i *PGIndex) Get(ctx context.Context, source string, key string) (core.Document, error) {
	row := i.pool.QueryRow(ctx, "SELECT id, source, url, dockey, modified, embedding FROM idx WHERE source = $1 AND dockey = $2", source, key)
	return unmarshalRow(row)
}

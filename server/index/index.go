package index

import (
	"context"

	"github.com/jackc/pgx/v4/pgxpool"
)

type PGIndex struct {
	pool *pgxpool.Pool
}

func New(ctx context.Context, url string) (*PGIndex, error) {
	pool, err := pgxpool.Connect(ctx, url)
	if err != nil {
		return nil, err
	}

	impl := &PGIndex{}
	impl.pool = pool
	return impl, nil
}

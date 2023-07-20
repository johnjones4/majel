postgres:
	docker run -e POSTGRES_PASSWORD=dev -e POSTGRES_USER=dev -e POSTGRES_DB=dev -p 5432:5432 ankane/pgvector

table:
	psql dev -h localhost -d dev < schema.sql

run:
	HTTP_HOST=:8080 DATABASE_URL=postgresql://dev:dev@localhost/dev go run . 


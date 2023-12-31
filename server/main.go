package main

import (
	"context"
	"log"
	"main/api"
	"main/core"
	"main/funcs"
	"main/index"
	"main/parsers"
	"main/sources"
	"main/sources/filesourcer"
	"net/http"
	"os"

	"github.com/sashabaranov/go-openai"
)

func main() {
	cancellable, _ := context.WithCancel(context.Background())

	idx, err := index.New(cancellable, os.Getenv("DATABASE_URL"))
	if err != nil {
		log.Panic(err)
	}

	client := openai.NewClient(os.Getenv("OPEN_API_KEY"))

	sourcer := &sources.CoreSourcer{
		Sources: []core.Source{
			&filesourcer.FileSourcer{Root: os.Getenv("FILE_CRAWL_ROOT")},
		},
		Parsers: []core.Parser{
			parsers.Plaintext,
		},
		OpenAIClient: client,
		Index:        idx,
	}

	go sourcer.Start(cancellable)

	apiInst := api.API{
		Funcs: &funcs.FuncsImpl{
			OpenAIClient: client,
			Index:        idx,
			Sourcer:      sourcer,
		},
	}
	apiInst.Configure()
	http.ListenAndServe(os.Getenv("HTTP_HOST"), apiInst.Mux)
}

package filesourcer

import (
	"context"
	"log"
	"main/core"
	"os"
	"path"
)

type FileSourcer struct {
	Root string
}

func (c *FileSourcer) CanSource(doc *core.Document) bool {
	return doc.Source == "filesystem"
}

func (c *FileSourcer) Retreive(ctx context.Context, parsers []core.Parser, doc *core.Document) (core.RawDocument, error) {
	var rdoc core.RawDocument
	var err error
	rdoc.DocumentMetadata = doc.DocumentMetadata
	rdoc.RawContents, err = os.ReadFile(rdoc.Key)
	if err != nil {
		return core.RawDocument{}, err
	}

parsers:
	for _, parser := range parsers {
		ok, err := parser(&rdoc)
		if err != nil {
			return core.RawDocument{}, err
		}
		if ok {
			break parsers
		}
	}

	return rdoc, nil
}

func (c *FileSourcer) Crawl(ctx context.Context, parsers []core.Parser, documents chan *core.RawDocument) error {
	return c.crawl(ctx, parsers, documents, c.Root)
}

func (c *FileSourcer) crawl(ctx context.Context, parsers []core.Parser, documents chan *core.RawDocument, crawlPath string) error {
	log.Println(crawlPath)
	files, err := os.ReadDir(crawlPath)
	if err != nil {
		return err
	}
	for _, file := range files {
		filePath := path.Join(crawlPath, file.Name())
		if file.IsDir() {
			err = c.crawl(ctx, parsers, documents, filePath)
			if err != nil {
				log.Println(err)
				continue
			}
		} else {
			info, err := file.Info()
			if err != nil {
				log.Println(err)
				continue
			}

			var doc core.Document
			doc.Source = "filesystem"
			doc.Key = filePath
			doc.Modified = info.ModTime()
			doc.URL = "file://" + doc.Key

			rdoc, err := c.Retreive(ctx, parsers, &doc)
			if err != nil {
				log.Println(err)
				continue
			}

			select {
			case <-ctx.Done():
				return ctx.Err()
			case documents <- &rdoc:
			}
		}
	}
	return nil
}

package parsers

import (
	"main/core"
	"strings"
	"unicode/utf8"
)

func Plaintext(doc *core.RawDocument) (bool, error) {
	if !utf8.Valid(doc.RawContents) {
		return false, nil
	}
	doc.TextContents = strings.ReplaceAll(strings.Trim(string(doc.RawContents), " "), "\n", " ")
	return doc.TextContents != "", nil
}

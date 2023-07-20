package funcs

import (
	"main/core"
	"main/sources"

	"github.com/sashabaranov/go-openai"
)

type FuncsImpl struct {
	OpenAIClient *openai.Client
	Index        core.Index
	Sourcer      *sources.CoreSourcer
}

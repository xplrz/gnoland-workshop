package solve

import (
	"gno.land/p/hello"
	"strings"
)

func Render(path string) string {
	if path == "" {
		return "# Hello world!\n"
	}
	return "None"
}

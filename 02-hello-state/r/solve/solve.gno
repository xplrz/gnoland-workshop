package solve

import (
	"gno.land/p/hello"
	"strings"
)

func Render(path string) string {
	if path == "" {
		return "# Welcome\n"
	}
	parts := strings.Split(path, "/")
	if len(parts) == 2 {
		query := strings.Split(parts[1], ":")[1]
		s := "# Welcome\n"
		s += hello.World(query) + "\n"
		return s
	}
	return "None"
}

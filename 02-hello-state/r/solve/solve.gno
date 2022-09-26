package solve

import (
	"gno.land/p/hello"
	"strings"
)

var Hello []string

func saveHello(hello string) {
	Hello = append(Hello, hello)
}

func Render(path string) string {
	if path == "" {
		s := "# Welcome\n"
		for i, v := range Hello {
			s += "* " + v + "\n"
		}
		return s
	}
	parts := strings.Split(path, "/")
	if len(parts) == 2 {
		query := strings.Split(parts[1], ":")[1]
		saveHello(query)
		s := "# Welcome\n"
		s += hello.World(query) + "\n"
		return s
	}
	return "None"
}

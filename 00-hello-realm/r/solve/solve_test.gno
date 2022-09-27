package solve

import (
	"testing"
)

func TestHello(t *testing.T) {
	expected := "# Hello world!"
	got := Render("") // /r/solve
	if got != expected {
		t.Errorf("Expected %q, got %q.", expected, got)
	}
}

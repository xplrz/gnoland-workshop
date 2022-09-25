package solve

import (
	"testing"
)

func TestHello(t *testing.T) {
	expected := "# Hello world!\n"
	got := Render("")
	if got != expected {
		t.Errorf("\nExpected %s \nGot %s", expected, got)
	}
}

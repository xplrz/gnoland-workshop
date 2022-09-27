package solve

import (
	"testing"
)

func TestWelcome(t *testing.T) {
	expected := "# Welcome"
	got := Render("") // /r/solve
	if got != expected {
		t.Errorf("\nExpected %s \nGot %s", expected, got)
	}
}

func TestWelcomeUser(t *testing.T) {
	expected := "# hello gnome, w3lc0m3 t0 gn0!"
	got := Render("gnome") // /r/solve:gnome
	if got != expected {
		t.Errorf("Expected %q, got %q.", expected, got)
	}
}

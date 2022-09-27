package solve

import (
	"testing"
)

func TestWelcome(t *testing.T) {
	expected := "# Welcome\n"
	got := Render("") // /r/solve
	if got != expected {
		t.Errorf("Expected %q, got %q.", expected, got)
	}
}

func TestWelcomeUser(t *testing.T) {
	expected := "# hello gnome, w3lc0m3 t0 gn0!"
	got := Render("gnome") // /r/solve:gnome
	if got != expected {
		t.Errorf("Expected %q, got %q.", expected, got)
	}
}

func TestWelcomeState(t *testing.T) {
	expected := "# Welcome\n* gnome"
	got := Render("") // /r/solve
	if got != expected {
		t.Errorf("Expected %q, got %q.", expected, got)
	}
}

func TestWelcomeUser2(t *testing.T) {
	expected := "# hello gn0m3, w3lc0m3 t0 gn0!"
	got := Render("gn0m3") // /r/solve:gn0m3
	if got != expected {
		t.Errorf("Expected %q, got %q.", expected, got)
	}
}

func TestWelcomeState2(t *testing.T) {
	expected := "# Welcome\n* gnome\n* gn0m3"
	got := Render("") // /r/solve
	if got != expected {
		t.Errorf("Expected %q, got %q.", expected, got)
	}
}

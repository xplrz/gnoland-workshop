package solve

import (
	"testing"
)

func TestWelcome(t *testing.T) {
	expected := "# Welcome\n"
	got := Render("")
	if got != expected {
		t.Errorf("\nExpected %s \nGot %s", expected, got)
	}
}

func TestWelcomeUser(t *testing.T) {
	expected := "# Welcome\nhello gnome, w3lc0m3 t0 gn0!\n"
	got := Render("r/solve:gnome")
	if got != expected {
		t.Errorf("\nExpected %s \nGot %s", expected, got)
	}
}

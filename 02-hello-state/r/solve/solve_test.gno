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

func TestWelcomeState(t *testing.T) {
	expected := "# Welcome\n* gnome\n"
	got := Render("")
	if got != expected {
		t.Errorf("\nExpected %s \nGot %s", expected, got)
	}
}

func TestWelcomeUser2(t *testing.T) {
	expected := "# Welcome\nhello gn0m3, w3lc0m3 t0 gn0!\n"
	got := Render("r/solve:gn0m3")
	if got != expected {
		t.Errorf("\nExpected %s \nGot %s", expected, got)
	}
}

func TestWelcomeState2(t *testing.T) {
	expected := "# Welcome\n* gnome\n* gn0m3\n"
	got := Render("")
	if got != expected {
		t.Errorf("\nExpected %s \nGot %s", expected, got)
	}
}

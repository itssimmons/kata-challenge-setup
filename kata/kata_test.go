package kata

import (
	"testing"
)

func Test29(t *testing.T) {
	expected := 29
	input := Decode("XXIX")
	if input != expected {
		t.Errorf("Expected %d but got %d", expected, input)
	}
}

func Test1990(t *testing.T) {
	expected := 1990
	input := Decode("MCMXC")
	if input != expected {
		t.Errorf("Expected %d but got %d", expected, input)
	}
}

package kata

import (
	"testing"
)

func Test20(t *testing.T) {
	expected := "XX"
	input := Solution(20)
	if input != expected {
		t.Errorf("Expected %s but got %s", expected, input)
	}
}

func Test1990(t *testing.T) {
	expected := "MCMXC"
	input := Solution(1990)
	if input != expected {
		t.Errorf("Expected %s but got %s", expected, input)
	}
}

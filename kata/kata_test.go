package kata

import (
	"testing"
)

func TestSample(t *testing.T) {
	tests := []struct {
		input    string
		expected string
	}{
		{"Welcome", "emocleW"},
		{"Hello", "olleH"},
		{"to", "to"},
		{"CodeWars", "sraWedoC"},
		{"Hey fellow warriors", "Hey wollef sroirraw"},
	}

	for _, test := range tests {
		t.Run(test.input, func(t *testing.T) {
			result := SpinWords(test.input)
			if result != test.expected {
				t.Errorf("SpinWords(%q) = %q; want %q", test.input, result, test.expected)
			}
		})
	}
}

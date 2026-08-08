package main

import (
	"fmt"

	"kata.io/kata"
)

func main() {
	recipe := map[string]int{
		"butter": 21,
	}
	ingredients := map[string]int{
		"apples":    2868,
		"butter":    6,
		"chocolate": 1627,
		"eggs":      2377,
		"milk":      2044,
		"nuts":      2774,
	}

	
	fmt.Println(kata.Cakes(recipe, ingredients)) // Output: 3
}

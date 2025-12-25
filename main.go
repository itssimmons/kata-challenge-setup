package main

import (
	"fmt"

	"example.com/kata/kata"
)

func main() {
	fmt.Println(kata.Decode("DLXXI")) // 571
	fmt.Println(kata.Decode("XXIX"))  // 29
	fmt.Println(kata.Decode("MCCXXXIX")) // 1239
}

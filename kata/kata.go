package kata

import "strings"

type Roman struct {
	Symbol string
	Value  int
}

var romans = [...]Roman{
	{"M", 	1000},
	{"CM", 	900},
	{"D", 	500},
	{"CD", 	400},
	{"C", 	100},
	{"XC", 	90},
	{"L", 	50},
	{"XL", 	40},
	{"X", 	10},
	{"IX", 	9},
	{"V", 	5},
	{"IV", 	4},
	{"I", 	1},
}

func Solution(number int) string {
	x := number
	var roman = strings.Builder{} 

	for x > 0 {
		for _, v := range romans {
			if v.Value <= x {
				x -= v.Value
				roman.WriteString(v.Symbol)
				break
			}
		}
	}

	return roman.String()
}

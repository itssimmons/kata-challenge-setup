package kata

var compounds = map[string]int{
	"CM": 900,
	"CD": 400,
	"XC": 90,
	"XL": 40,
	"IX": 9,
	"IV": 4,
}

var singles = map[string]int{
	"M": 1_000,
	"D": 500,
	"C": 100,
	"L": 50,
	"X": 10,
	"V": 5,
	"I": 1,
}

func Decode(roman string) int {
	r := roman
  x := 0
  
	for i := 0; i < len(r); i++ {
		if i+2 <= len(r) {
			digits := r[i:i+2]
			if v, err := compounds[digits]; err == true {
				x += v
				r = r[:i] + r[i+2:]
				i -= 1
			}
		}
	}
	
	for _, symbol := range r {
		s := string(symbol)
		if v, err := singles[s]; err == true {
			x += v
		}
	}
  
  return x
}

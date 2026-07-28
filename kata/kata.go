package kata

import "strings"

func SpinWords(words string) string {
	it := strings.Split(words, " ")
	var buf = make([]string, len(it))

	for i, v := range it {
		if len(v) >= 5 {
			buf[i] = reverse(v)
		} else {
			buf[i] = v
		}
	}

	return strings.Join(buf, " ")
}

func reverse(s string) string {
	var r = []rune(s)
	for i, j := 0, len(r)-1; i < j; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}

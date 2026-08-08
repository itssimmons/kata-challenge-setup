package kata

import (
	"fmt"
	"strings"
)

func ipv4(ip string) uint32 {
	var n uint32
	for i, part := range strings.Split(ip, ".") {
		var octet uint32
		fmt.Sscanf(part, "%d", &octet)
		octet <<= uint32(8 * (3 - i))
		n |= octet
	}
	return n
}

func IpsBetween(start, end string) uint32 {
	return ipv4(end) - ipv4(start)
}

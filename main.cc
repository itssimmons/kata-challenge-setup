#include <iostream>
#include <string>

int persistence(long long n) {
	if (n < 10) return 0;
	int x = 1;
	for (const char& c : std::to_string(n)) {
		x *= (c - '0');
	}
	return 1 + persistence(x);
}

auto main(int argc, char const *argv[]) -> int
{
	std::cout << persistence(39) << '\n';
	std::cout << persistence(999) << '\n';
	std::cout << persistence(4) << '\n';
	return 0;
}

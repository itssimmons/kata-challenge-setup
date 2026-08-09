#include <iostream>

#include "kata.hpp"

auto main() -> int {
	std::cout
		<< stripComments("apples, pears # news\ngrapes\nbananas !apples", {'#', '!'})
		<< "\n---\n";
	std::cout
		<< stripComments("a #b\nc\nd $e f g", {'#', '$'})
		<< "\n---\n";
	std::cout
		<< stripComments("  a\n  b  # comment\n  c  ", {'#', '$'})
		<< "\n---\n";
	std::cout
		<< stripComments("apples, plums % grapes\npears\ncomets !apples", {'%', '!'})
		<< '\n';
	std::cout
		<< stripComments("# comment", {'#'});
	return 0;
}

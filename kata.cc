#include <string>
#include <unordered_set>
#include <vector>

std::string trim(const std::string& str) {
    size_t end = str.size();
    while (end > 0 && std::isspace(static_cast<unsigned char>(str[end - 1])))
        --end;
    return str.substr(0, end);
}

size_t findChar(const std::string& haystack, const char& needle) {
	for (size_t i = 0; i < haystack.length(); ++i) {
		if (haystack[i] == needle) return i;
	}
	return std::string::npos;
}

std::vector<std::string> split(const std::string& str, const char& c) {
	std::vector<std::string> v{};
	size_t start = 0;
	for (size_t i = 0; i < str.length(); ++i) {
		if (str[i] == c) {
			v.push_back(str.substr(start, i - start));
			start = i + 1;
		}
	}
	v.push_back(str.substr(start));
	return v;
}

std::string join(const std::vector<std::string>& v, const char& sep) {
  std::string s;
  for (size_t i = 0; i < v.size(); ++i) {
    s += v[i];
    if (i != v.size() - 1) {
      s += sep;
    }
  }
  return s;
}

std::string stripComments(
		const std::string& str,
		const std::unordered_set<char>& markers
) {
	std::vector<std::string> v{};
	std::vector<std::string> lines = split(str, '\n');
	for (const std::string& line : lines) {
		size_t cut_idx = line.length();
		for (const char& marker : markers) {
			size_t target = findChar(line, marker);
			if (target != std::string::npos && target < cut_idx) {
				cut_idx = target;
			}
		}
		v.push_back(trim(line.substr(0, cut_idx)));
	}
	return join(v, '\n');
}

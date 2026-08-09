#ifndef KATA_H_
#define KATA_H_

#include <string>
#include <unordered_set>
#include <vector>

std::string trim(const std::string& str);

size_t findChar(const std::string& haystack, const char& needle);

std::vector<std::string> split(const std::string& str, const char& c);

std::string join(const std::vector<std::string>& v, const char& sep);

std::string stripComments(
  const std::string& str,
  const std::unordered_set<char>& markers
);

#endif  // KATA_H_

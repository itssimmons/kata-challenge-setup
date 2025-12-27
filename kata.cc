#include <format>
#include <string>

std::string uint32_to_ip(uint32_t ip)
{
  return std::format("{}.{}.{}.{}",
		(ip >> 24) & 0xFF,
		(ip >> 16) & 0xFF,
		(ip >> 8) & 0xFF,
		ip & 0xFF
	);
}

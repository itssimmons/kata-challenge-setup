#include "kata.hpp"

#include <gtest/gtest.h>

TEST(KataTest, BasicAssertions) {
    ASSERT_EQ(uint32_to_ip(0), "0.0.0.0");
    ASSERT_EQ(uint32_to_ip(2149583361), "128.32.10.1");
    ASSERT_EQ(uint32_to_ip(4294967295), "255.255.255.255");
    ASSERT_EQ(uint32_to_ip(16777216), "1.0.0.0");
    ASSERT_EQ(uint32_to_ip(2130706433), "127.0.0.1");
}

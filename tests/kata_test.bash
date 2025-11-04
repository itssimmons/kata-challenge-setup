#!/usr/bin/env bats
source kata

@test "3366 is not a leap year" {
    result="$(kata 3363)"
    [ "$result" == 0 ]
}

@test "2020 is a leap year" {
    result="$(kata 2020)"
    [ "$result" == 1 ]
}

#!/usr/bin/env bats
source kata

@test "3366 is not a leap year" {
    result="$(evaporator 10 10 10)"
    [ "$result" == 22 ]
}

@test "2020 is a leap year" {
    result="$(evaporator 10 10 5)"
    [ "$result" == 29 ]
}

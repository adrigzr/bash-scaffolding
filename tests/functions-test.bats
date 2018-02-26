#!/usr/bin/env bats

. lib/functions.sh

@test "It works" {
  run foo
  [ "$status" -eq 1 ]
  [ "${lines[0]}" = "foo" ]
}

#!/usr/bin/env bats

load "helpers/load"
load "../lib/functions"

@test "It works" {
  run foo
  [ "$status" -eq 1 ]
  [ "${lines[0]}" = "foo" ]
}

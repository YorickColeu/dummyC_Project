#!/usr/bin/env bats

load $HOME/'bats_helper/bats-support/load.bash'
load $HOME/'bats_helper/bats-assert/load.bash'

@test "Build project" {
  run make -C /tmp/dummyC_Project

  assert_success
}

@test "Check output" {
  run ../main

  assert_success
  assert_output "Hello world!"
}

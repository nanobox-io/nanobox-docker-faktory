# source docker helpers
. util/docker.sh

@test "Start Container" {
  start_container "faktory-test"
}

@test "Verify faktory installed" {
  # ensure faktory executable exists
  run docker exec "faktory-test" bash -c "[ -f /data/bin/faktory ]"

  [ "$status" -eq 0 ]
}

@test "Stop Container" {
  stop_container "faktory-test"
}

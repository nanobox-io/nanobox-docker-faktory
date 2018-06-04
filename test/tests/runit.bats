# source docker helpers
. util/docker.sh

@test "Start Container" {
  start_container "runit-test"
}

@test "Verify runit installed" {
  # ensure runit executable exists
  run docker exec "runit-test" bash -c "[ -f /sbin/runit ]"

  [ "$status" -eq 0 ]
}

@test "Ensure /etc/service dir exists" {
  run docker exec "runit-test" bash -c "[ -d /etc/service ]"
  
  [ "$status" -eq 0 ]
}

@test "Stop Container" {
  stop_container "runit-test"
}

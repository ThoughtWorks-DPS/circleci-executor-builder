#!/usr/bin/env bats

@test "nodejs version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge node --version"
  [[ "${output}" =~ "21.7" ]]
}

@test "npm version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge npm --version"
  [[ "${output}" =~ "10.8" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge bats -v"
  [[ "${output}" =~ "1.11" ]]
}

@test "conftest version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge conftest --version"
  [[ "${output}" =~ "0.53" ]]
}

@test "hadolint version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge hadolint --version"
  [[ "${output}" =~ "2.12" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge snyk --version"
  [[ "${output}" =~ "1.1292" ]]
}

@test "trivy version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge trivy --version"
  [[ "${output}" =~ "0.53" ]]
}

@test "grype version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge grype --version"
  [[ "${output}" =~ "0.79" ]]
}

@test "cosign version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge cosign version"
  [[ "${output}" =~ "2.2" ]]
}

@test "syft version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge syft version"
  [[ "${output}" =~ "1.8" ]]
}

@test "oras version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge oras version"
  [[ "${output}" =~ "1.2" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-executor-builder-alpine-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}

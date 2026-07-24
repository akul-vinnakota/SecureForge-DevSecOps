#!/usr/bin/env bash

set -uo pipefail

mkdir -p reports

echo "Running Gitleaks secret scan..."

docker run --rm \
  --user "$(id -u):$(id -g)" \
  -v "$PWD:/repo" \
  -w /repo \
  ghcr.io/gitleaks/gitleaks:latest \
  git \
  --redact \
  --report-format json \
  --report-path reports/gitleaks-report.json \
  .

exit_code=$?

if [ "$exit_code" -ne 0 ]; then
  echo "Gitleaks detected one or more potential secrets."
else
  echo "Gitleaks completed with no detected secrets."
fi

exit "$exit_code"

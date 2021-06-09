#!/bin/bash
echo "Running configuration"
RUNNER_ALLOW_RUNASROOT="1" ./config.sh \
    --url "${SHORT_URL}" \
    --token "${RUNNER_TOKEN}" \
    --name "${RUNNER_NAME}" \
    --work "_work" \
    --labels "" \
    --runnergroup "${RUNNER_GROUP}" \
    --unattended \
    --replace
echo "Running"
./bin/runsvc.sh

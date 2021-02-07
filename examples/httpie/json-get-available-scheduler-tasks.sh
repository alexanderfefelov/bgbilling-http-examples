#!/usr/bin/env bash

. bgbilling.sh

export MODULE_ID=${1:-0}
readonly CALL_PARAMETERS='
{
    "moduleId": $MODULE_ID
}'

call_json_service $ENDPOINT_SCHEDULER getAvailableSchedulerTasks "$(envsubst <<< $CALL_PARAMETERS)"

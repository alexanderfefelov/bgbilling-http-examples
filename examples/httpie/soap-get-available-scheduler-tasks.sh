#!/usr/bin/env bash

. bgbilling.sh

export MODULE_ID=${1:-0}

readonly CALL='<getAvailableSchedulerTasks>
    <moduleId>$MODULE_ID</moduleId>
</getAvailableSchedulerTasks>'

call_soap_service $ENDPOINT_SCHEDULER $NAMESPACE_SCHEDULER "$(envsubst <<< $CALL)"

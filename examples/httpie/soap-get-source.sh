#!/usr/bin/env bash

. bgbilling.sh

export CLASS_NAME=${1:-SysInfo}

readonly CALL='
<getSource>
    <className xmlns="">$CLASS_NAME</className>
</getSource>'

call_soap_service $ENDPOINT_DYNAMIC_CODE $NAMESPACE_DYNAMIC_CODE "$(envsubst <<< $CALL)"

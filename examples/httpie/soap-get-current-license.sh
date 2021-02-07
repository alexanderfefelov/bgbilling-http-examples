#!/usr/bin/env bash

. bgbilling.sh

readonly CALL='<getCurrentLicense/>'

call_soap_service $ENDPOINT_LICENSE $NAMESPACE_LICENSE "$CALL"

#!/usr/bin/env bash

. bgbilling.sh

readonly CALL='<getPlugins/>'

call_soap_service $ENDPOINT_PLUGINCFG $NAMESPACE_PLUGINCFG "$CALL"

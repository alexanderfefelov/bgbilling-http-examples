#!/usr/bin/env bash

. bgbilling.sh

call_json_service $ENDPOINT_PLUGINCFG getPlugins

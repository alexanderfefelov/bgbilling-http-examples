readonly HTTP="http --verbose --check-status"
readonly USER_AGENT=docker-backpack-bgbilling
readonly EXECUTER=http://bgbilling-server.backpack.test:60080/billing/executer
readonly API_ACTION=$EXECUTER
readonly API_JSON=$EXECUTER/json
readonly API_SOAP=$EXECUTER
export USERNAME=api_maolaechuuke
export PASSWORD=onguushooyee

readonly ENDPOINT_CONFIG=ru.bitel.bgbilling.kernel.config/ConfigService
readonly ENDPOINT_DYNAMIC_CODE=ru.bitel.bgbilling.kernel.dynamic/DynamicCodeService
readonly ENDPOINT_ENTITY=ru.bitel.oss.kernel.entity/EntityService
readonly ENDPOINT_LICENSE=ru.bitel.bgbilling.kernel.admin.license/LicenseService
readonly ENDPOINT_MODULE=ru.bitel.bgbilling.kernel.module/ModuleService
readonly ENDPOINT_PLUGINCFG=ru.bitel.bgbilling.kernel.admin.plugincfg/PlugincfgService
readonly ENDPOINT_SCHEDULER=ru.bitel.bgbilling.kernel.task/SchedulerService
readonly ENDPOINT_USER=ru.bitel.bgbilling.kernel.bgsecure/UserService
readonly ENDPOINT_USER_RIGHT=ru.bitel.bgbilling.kernel.bgsecure/UserRightService

readonly NAMESPACE_DYNAMIC_CODE=http://common.dynamic.kernel.bgbilling.bitel.ru/
readonly NAMESPACE_LICENSE=http://service.common.license.admin.kernel.bgbilling.bitel.ru/
readonly NAMESPACE_PLUGINCFG=http://common.plugincfg.admin.kernel.bgbilling.bitel.ru/
readonly NAMESPACE_SCHEDULER=http://common.task.kernel.bgbilling.bitel.ru/

#
# Arguments:
#   $1 - module
#   $2 - method
#   $3... - request parameters
# Returns:
#   none
#
call_action() {
  $HTTP --form POST $API_ACTION \
    "User-Agent: $USER_AGENT" \
    module=$1 action=$2 user=$USERNAME pswd=$PASSWORD authToSession=0 "${@:3}"
}

#
# Arguments:
#   $1 - endpoint
#   $2 - method
#   $3 - parameters as JSON object
# Returns:
#   none
#
call_json_service() {
  export METHOD=$2
  export PARAMETERS=${3:-null}
  local -r JSON_TEMPLATE='{
      "method": "$METHOD",
      "params": $PARAMETERS,
      "user": { "user": "$USERNAME", "pswd": "$PASSWORD" }
    }'
  $HTTP POST $API_JSON/$1 \
    "User-Agent: $USER_AGENT" \
    <<< $(envsubst <<< $JSON_TEMPLATE)
}

#
# Arguments:
#   $1 - endpoint
#   $2 - namespace
#   $3 - SOAP message body as XML node
# Returns:
#   none
#
call_soap_service() {
  export MESSAGE_BODY=$3
  local -r XML_TEMPLATE='<?xml version="1.0" encoding="utf-8" ?>
    <e:Envelope xmlns:e="http://schemas.xmlsoap.org/soap/envelope/">
      <e:Header>
        <auth xmlns="http://ws.base.kernel.bgbilling.bitel.ru/" user="$USERNAME" pswd="$PASSWORD"></auth>
      </e:Header>
      <e:Body xmlns="'$2'">
        $MESSAGE_BODY
      </e:Body>
    </e:Envelope>'
  $HTTP POST $API_SOAP/$1 \
    "User-Agent: $USER_AGENT" \
    "Accept: text/xml, */*" \
    "Content-Type: text/xml; charset=utf-8" \
    <<< $(envsubst <<< $XML_TEMPLATE)
}

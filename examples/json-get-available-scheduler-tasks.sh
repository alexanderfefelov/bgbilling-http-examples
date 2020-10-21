#!/usr/bin/env bash

. bgbilling.sh

export MODULE_ID=${1:-0}
readonly CALL_PARAMETERS='{
    "moduleId": $MODULE_ID
  }'

call_json_service $ENDPOINT_SCHEDULER getAvailableSchedulerTasks "$(envsubst <<< $CALL_PARAMETERS)"

<< ////

Example session:

POST /billing/executer/json/ru.bitel.bgbilling.kernel.task/SchedulerService HTTP/1.1
Accept: application/json, */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 156
Content-Type: application/json
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

{
    "method": "getAvailableSchedulerTasks",
    "params": {
        "moduleId": 0
    },
    "user": {
        "pswd": "onguushooyee",
        "user": "api_maolaechuuke"
    }
}

HTTP/1.1 200 OK
Content-Length: 1710
Date: Wed, 21 Oct 2020 06:04:43 GMT

{"status":"ok","exception":null,"message":"","tag":null,"data":{"return":[{"first":"bitel.billing.server.load.TaskGenerator","second":"Генератор заданий на загрузку логов"},{"first":"bitel.billing.server.admin.integration.PaymentLoader","second":"Загрузка платежей из файлов"},{"first":"bitel.billing.server.contract.CleanerContract","second":"Удаление старых договоров"},{"first":"bitel.billing.server.contract.LimitRestorer","second":"Восстановление лимитов"},{"first":"bitel.billing.server.script.TimerEventGenerate","second":"Генератор событий таймера"},{"first":"bitel.billing.server.contract.ContractStatusSetter","second":"Установка статусов договоров"},{"first":"ru.bitel.bgbilling.kernel.script.server.task.GlobalScriptTimer","second":"Выполнение глобальных скриптов по таймеру"},{"first":"ru.bitel.bgbilling.kernel.task.server.task.TaskUpdateAddressDirectory","second":"Обновление адресного справочника"},{"first":"ru.bitel.bgbilling.kernel.contract.period.server.task.ContractPeriodSentCloseEvent","second":"Генерации событий окончания учетного периода"},{"first":"bitel.billing.server.contract.DebtMailSender","second":"Рассылка о понижении лимита"},{"first":"ru.bitel.bgbilling.kernel.task.server.Validator","second":"Валидатор"},{"first":"ru.bitel.bgbilling.kernel.task.server.TaskChekNewAddressCustom","second":"Проверка наличия новых пользовательских адресов"}]}}

////

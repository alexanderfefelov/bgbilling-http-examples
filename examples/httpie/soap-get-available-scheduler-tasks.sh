#!/usr/bin/env bash

. bgbilling.sh

export MODULE_ID=${1:-0}
readonly CALL='<n:getAvailableSchedulerTasks xmlns:n="http://common.task.kernel.bgbilling.bitel.ru/">
    <moduleId>$MODULE_ID</moduleId>
  </n:getAvailableSchedulerTasks>'

call_soap_service $ENDPOINT_SCHEDULER "$(envsubst <<< $CALL)"

<< ////

Example session:

POST /billing/executer/ru.bitel.bgbilling.kernel.task/SchedulerService HTTP/1.1
Accept: text/xml, */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 465
Content-Type: text/xml; charset=utf-8
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

<?xml version="1.0" encoding="utf-8" ?>
    <e:Envelope xmlns:e="http://schemas.xmlsoap.org/soap/envelope/">
      <e:Header>
        <auth xmlns="http://ws.base.kernel.bgbilling.bitel.ru/" user="api_maolaechuuke" pswd="onguushooyee"></auth>
      </e:Header>
      <e:Body>
        <n:getAvailableSchedulerTasks xmlns:n="http://common.task.kernel.bgbilling.bitel.ru/">
    <moduleId>0</moduleId>
  </n:getAvailableSchedulerTasks>
      </e:Body>
    </e:Envelope>

HTTP/1.1 200 OK
Content-Type: text/xml;charset=utf-8
Date: Wed, 21 Oct 2020 05:49:41 GMT
Transfer-Encoding: chunked

<?xml version="1.0" ?><S:Envelope xmlns:S="http://schemas.xmlsoap.org/soap/envelope/"><S:Body><ns5:getAvailableSchedulerTasksResponse xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:common="http://common.bitel.ru" xmlns:ns5="http://common.task.kernel.bgbilling.bitel.ru/"><return><first xsi:type="xs:string">bitel.billing.server.load.TaskGenerator</first><second xsi:type="xs:string">Генератор заданий на загрузку логов</second></return><return><first xsi:type="xs:string">bitel.billing.server.admin.integration.PaymentLoader</first><second xsi:type="xs:string">Загрузка платежей из файлов</second></return><return><first xsi:type="xs:string">bitel.billing.server.contract.CleanerContract</first><second xsi:type="xs:string">Удаление старых договоров</second></return><return><first xsi:type="xs:string">bitel.billing.server.contract.LimitRestorer</first><second xsi:type="xs:string">Восстановление лимитов</second></return><return><first xsi:type="xs:string">bitel.billing.server.script.TimerEventGenerate</first><second xsi:type="xs:string">Генератор событий таймера</second></return><return><first xsi:type="xs:string">bitel.billing.server.contract.ContractStatusSetter</first><second xsi:type="xs:string">Установка статусов договоров</second></return><return><first xsi:type="xs:string">ru.bitel.bgbilling.kernel.script.server.task.GlobalScriptTimer</first><second xsi:type="xs:string">Выполнение глобальных скриптов по таймеру</second></return><return><first xsi:type="xs:string">ru.bitel.bgbilling.kernel.task.server.task.TaskUpdateAddressDirectory</first><second xsi:type="xs:string">Обновление адресного справочника</second></return><return><first xsi:type="xs:string">ru.bitel.bgbilling.kernel.contract.period.server.task.ContractPeriodSentCloseEvent</first><second xsi:type="xs:string">Генерации событий окончания учетного периода</second></return><return><first xsi:type="xs:string">bitel.billing.server.contract.DebtMailSender</first><second xsi:type="xs:string">Рассылка о понижении лимита</second></return><return><first xsi:type="xs:string">ru.bitel.bgbilling.kernel.task.server.Validator</first><second xsi:type="xs:string">Валидатор</second></return><return><first xsi:type="xs:string">ru.bitel.bgbilling.kernel.task.server.TaskChekNewAddressCustom</first><second xsi:type="xs:string">Проверка наличия новых пользовательских адресов</second></return></ns5:getAvailableSchedulerTasksResponse></S:Body></S:Envelope>

////

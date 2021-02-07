#!/usr/bin/env bash

. bgbilling.sh

export MODULE_ID=${1:-0}

readonly CALL='<getAvailableSchedulerTasks>
    <moduleId>$MODULE_ID</moduleId>
</getAvailableSchedulerTasks>'

call_soap_service $ENDPOINT_SCHEDULER $NAMESPACE_SCHEDULER "$(envsubst <<< $CALL)"

<< ////

Example session:

POST /billing/executer/ru.bitel.bgbilling.kernel.task/SchedulerService HTTP/1.1
Accept: text/xml, */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 457
Content-Type: text/xml; charset=utf-8
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

<?xml version="1.0" encoding="utf-8" ?>
    <e:Envelope xmlns:e="http://schemas.xmlsoap.org/soap/envelope/">
      <e:Header>
        <auth xmlns="http://ws.base.kernel.bgbilling.bitel.ru/" user="api_maolaechuuke" pswd="onguushooyee"></auth>
      </e:Header>
      <e:Body xmlns="http://common.task.kernel.bgbilling.bitel.ru/">
        <getAvailableSchedulerTasks>
    <moduleId>0</moduleId>
</getAvailableSchedulerTasks>
      </e:Body>
    </e:Envelope>

HTTP/1.1 200 OK
Content-Type: text/xml;charset=utf-8
Date: Sun, 07 Feb 2021 04:55:50 GMT
Transfer-Encoding: chunked

<?xml version="1.0" ?>
<S:Envelope xmlns:S="http://schemas.xmlsoap.org/soap/envelope/">
    <S:Body>
        <ns5:getAvailableSchedulerTasksResponse xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                                                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                                                xmlns:common="http://common.bitel.ru"
                                                xmlns:ns5="http://common.task.kernel.bgbilling.bitel.ru/">
            <return>
                <first xsi:type="xs:string">bitel.billing.server.load.TaskGenerator</first>
                <second xsi:type="xs:string">Генератор заданий на загрузку логов</second>
            </return>

... skipped ...

            <return>
                <first xsi:type="xs:string">bitel.billing.server.admin.integration.PaymentLoader</first>
                <second xsi:type="xs:string">Загрузка платежей из файлов</second>
            </return>
        </ns5:getAvailableSchedulerTasksResponse>
    </S:Body>
</S:Envelope>

////

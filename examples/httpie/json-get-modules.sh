#!/usr/bin/env bash

. bgbilling.sh

call_json_service $ENDPOINT_MODULE installedModuleList

<< ////

Example session:

POST /billing/executer/json/ru.bitel.bgbilling.kernel.module/ModuleService HTTP/1.1
Accept: application/json, */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 130
Content-Type: application/json
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

{
    "method": "installedModuleList",
    "params": null,
    "user": {
        "pswd": "onguushooyee",
        "user": "api_maolaechuuke"
    }
}

HTTP/1.1 200 OK
Content-Length: 4361
Date: Wed, 21 Oct 2020 02:29:57 GMT

{"status":"ok","exception":null,"message":"","tag":null,"data":{"return":[{"id":2,"title":"Card","enabled":false,"type":"module","name":"card","version":"1.0","packageClient":"bitel.billing.module.services.card","packageServer":"bitel.billing.server.card","build":null,"clientExtensionMap":{},"serverExtensionMap":{"ru.bitel.bgbilling.server.WebMenu":"<?xml version=\"1.0\" encoding=\"UTF-16\"?>\n<extension point=\"ru.bitel.bgbilling.server.WebMenu\">\n\t\t<item action=\"Card\" id=\"1\" titleDefault=\"Пополнение счета с помощью Интернет-карт\"/>\n\t\t<item action=\"ReportDealers\" id=\"2\" titleDefault=\"Отчет по дилерам\"/>\n\t</extension>"}},{"id":6,"title":"Inet","enabled":false,"type":"module","name":"inet","version":"1.0","packageClient":"ru.bitel.bgbilling.modules.inet.api.client","packageServer":"ru.bitel.bgbilling.modules.inet.api.server","build":null,"clientExtensionMap":{},"serverExtensionMap":{"bitel.billing.server.TaskExecuter":"<?xml version=\"1.0\" encoding=\"UTF-16\"?>\n<extension point=\"bitel.billing.server.TaskExecuter\">\n\t\t<task class=\"ru.bitel.bgbilling.modules.inet.task.InetServPeriodTask\" title=\"Активация/деактивация сервисов по периоду\"/>\n\t</extension>","ru.bitel.bgbilling.server.WebMenu":"<?xml version=\"1.0\" encoding=\"UTF-16\"?>\n<extension point=\"ru.bitel.bgbilling.server.WebMenu\">\n\t\t<item action=\"SessionReport\" id=\"1\" titleDefault=\"Отчет по сессиям Inet\"/>\n\t\t<item action=\"ChangeLoginPassword\" id=\"2\" titleDefault=\"Смена пароля на логины Inet\"/>\n\t\t<item action=\"TrafficReport\" defaultVisible=\"0\" id=\"3\" titleDefault=\"Отчет по трафикам Inet\"/>\n\t\t<item action=\"ServiceReport\" defaultVisible=\"0\" id=\"4\" titleDefault=\"Отчет по наработке Inet\"/>\n\t\t<item action=\"ShowPeriods\" defaultVisible=\"0\" id=\"5\" titleDefault=\"Учетные периоды Inet\"/>\n\t</extension>","bitel.billing.server.contract.bean.find.SearchContracts":"<?xml version=\"1.0\" encoding=\"UTF-16\"?>\n<extension point=\"bitel.billing.server.contract.bean.find.SearchContracts\">\n\t\t<search class=\"ru.bitel.bgbilling.modules.inet.api.server.bean.SearchContractByInetLogin\"/>\n\t</extension>"}},{"id":7,"title":"NPay","enabled":false,"type":"module","name":"npay","version":"1.0","packageClient":"bitel.billing.module.services.npay","packageServer":"bitel.billing.server.npay","build":null,"clientExtensionMap":{},"serverExtensionMap":{"bitel.billing.server.TaskExecuter":"<?xml version=\"1.0\" encoding=\"UTF-16\"?>\n<extension point=\"bitel.billing.server.TaskExecuter\">\n\t\t<task class=\"ru.bitel.bgbilling.modules.npay.server.Calculator\" title=\"Начисление NPay абонплат\"/>\n\t\t<task class=\"ru.bitel.bgbilling.modules.npay.server.task.DebetStatusManageLocker\" title=\"Закрытие статуса NPay договоров по балансу\"/>\n\t</extension>"}},{"id":8,"title":"RSCM","enabled":false,"type":"module","name":"rscm","version":"1.0","packageClient":"ru.bitel.bgbilling.modules.rscm.client","packageServer":"ru.bitel.bgbilling.modules.rscm.server","build":null,"clientExtensionMap":{},"serverExtensionMap":{"bitel.billing.server.TaskExecuter":"<?xml version=\"1.0\" encoding=\"UTF-16\"?>\n<extension point=\"bitel.billing.server.TaskExecuter\">\n\t\t<task class=\"ru.bitel.bgbilling.modules.rscm.server.Calculator\" title=\"Начисление RSCM\"/>\n\t</extension>","ru.bitel.bgbilling.server.WebMenu":"<?xml version=\"1.0\" encoding=\"UTF-16\"?>\n<extension point=\"ru.bitel.bgbilling.server.WebMenu\">\n\t\t<item action=\"ContractService\" id=\"1\" titleDefault=\"Разовые начисления\"/>\n\t</extension>"}},{"id":9,"title":"Subscription","enabled":false,"type":"module","name":"subscription","version":"1.0","packageClient":"ru.bitel.bgbilling.modules.subscription.client","packageServer":"ru.bitel.bgbilling.modules.subscription.server","build":null,"clientExtensionMap":{},"serverExtensionMap":{"ru.bitel.bgbilling.server.WebMenu":"<?xml version=\"1.0\" encoding=\"UTF-16\"?>\n<extension point=\"ru.bitel.bgbilling.server.WebMenu\">\n\t\t<item action=\"Subscription\" id=\"1\" titleDefault=\"Управление подписками\"/>\n\t</extension>"}}]}}

////

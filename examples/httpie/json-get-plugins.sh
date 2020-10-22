#!/usr/bin/env bash

. bgbilling.sh

call_json_service $ENDPOINT_PLUGINCFG getPlugins

<< ////

Example session:

POST /billing/executer/json/ru.bitel.bgbilling.kernel.admin.plugincfg/PlugincfgService HTTP/1.1
Accept: application/json, */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 121
Content-Type: application/json
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

{
    "method": "getPlugins",
    "params": null,
    "user": {
        "pswd": "onguushooyee",
        "user": "api_maolaechuuke"
    }
}

HTTP/1.1 200 OK
Content-Length: 584
Date: Wed, 21 Oct 2020 02:30:23 GMT

{"status":"ok","exception":null,"message":"","tag":null,"data":{"return":[{"id":1,"title":"Bonus","name":"ru.bitel.bgbilling.plugins.bonus","enabled":true,"config":null},{"id":3,"title":"Рассылки (Dispatch)","name":"ru.bitel.bgbilling.plugins.dispatch","enabled":false,"config":null},{"id":4,"title":"Документы (Documents)","name":"ru.bitel.bgbilling.plugins.documents","enabled":false,"config":null},{"id":5,"title":"Служба поддержки пользователей (HelpDesk)","name":"ru.bitel.bgbilling.plugins.helpdesk","enabled":false,"config":null}]}}

////

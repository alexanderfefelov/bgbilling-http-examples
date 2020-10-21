#!/usr/bin/env bash

. bgbilling.sh

call_json_service $ENDPOINT_ENTITY entitySpecList

<< ////

Example session:

POST /billing/executer/json/ru.bitel.oss.kernel.entity/EntityService HTTP/1.1
Accept: application/json, */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 125
Content-Type: application/json
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

{
    "method": "entitySpecList",
    "params": null,
    "user": {
        "pswd": "onguushooyee",
        "user": "api_maolaechuuke"
    }
}

HTTP/1.1 200 OK
Content-Length: 1570
Date: Wed, 21 Oct 2020 02:28:38 GMT

{"status":"ok","exception":null,"message":"","tag":null,"data":{"return":[{"id":100,"title":"Коммутатор","entityTitleMacros":"","moduleIds":null,"entitySpecTypeId":0,"comment":"","hidden":false,"attributeList":[{"id":100,"title":"Идентификатор во внешней системе 1","type":1,"history":false,"comment":"","typeName":"text"},{"id":101,"title":"Идентификатор во внешней системе 2","type":1,"history":false,"comment":"","typeName":"text"},{"id":102,"title":"Идентификатор во внешней системе 3","type":1,"history":false,"comment":"","typeName":"text"},{"id":103,"title":"S/N","type":1,"history":false,"comment":"","typeName":"text"},{"id":104,"title":"Адрес","type":8,"history":false,"comment":"","typeName":"address"}]},{"id":101,"title":"Маршрутизатор","entityTitleMacros":"","moduleIds":null,"entitySpecTypeId":0,"comment":"","hidden":false,"attributeList":[{"id":100,"title":"Идентификатор во внешней системе 1","type":1,"history":false,"comment":"","typeName":"text"},{"id":101,"title":"Идентификатор во внешней системе 2","type":1,"history":false,"comment":"","typeName":"text"},{"id":102,"title":"Идентификатор во внешней системе 3","type":1,"history":false,"comment":"","typeName":"text"},{"id":103,"title":"S/N","type":1,"history":false,"comment":"","typeName":"text"},{"id":104,"title":"Адрес","type":8,"history":false,"comment":"","typeName":"address"}]}]}}

////

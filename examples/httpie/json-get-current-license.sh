#!/usr/bin/env bash

. bgbilling.sh

call_json_service $ENDPOINT_LICENSE getCurrentLicense

<< ////

Example session:

POST /billing/executer/json/ru.bitel.bgbilling.kernel.admin.license/LicenseService HTTP/1.1
Accept: application/json, */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 136
Content-Type: application/json
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

{
    "method": "getCurrentLicense",
    "params": null,
    "user": {
        "pswd": "onguushooyee",
        "user": "api_maolaechuuke"
    }
}

HTTP/1.1 200 OK
Content-Length: 3659
Date: Fri, 05 Feb 2021 20:40:54 GMT

{"status":"ok","exception":null,"message":"","tag":null,"data":{"return":[{"title":"agr","date":"30.06.2021","count":"0:0"},{"title":"alfabank","date":"30.06.2021","count":"0:0"},{"title":"assist","date":"30.06.2021","count":"0:0"}, ... skipped ... {"title":"vseplatezhi","date":"30.06.2021","count":"0:0"},{"title":"wm","date":"30.06.2021","count":"0:0"},{"title":"yamoney","date":"30.06.2021","count":"0:0"}]}}

////

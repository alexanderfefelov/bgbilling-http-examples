#!/usr/bin/env bash

. bgbilling.sh

call_action contract.status StatusList

<< ////

Example session:

POST /billing/executer HTTP/1.1
Accept: */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 96
Content-Type: application/x-www-form-urlencoded; charset=utf-8
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

module=contract.status&action=StatusList&user=api_maolaechuuke&pswd=onguushooyee&authToSession=0

HTTP/1.1 200 OK
Cache-control: no-cache, no-store, must-revalidate
Content-Type: text/xml;charset=UTF-8
Date: Wed, 21 Oct 2020 02:27:59 GMT
Expires: Thu, 01 Jan 1970 00:00:01 GMT
Last-Modified: Thu, 01 Jan 1970 00:00:01 GMT
Transfer-Encoding: chunked

<?xml version="1.0" encoding="UTF-8"?><data status="ok"><list><item id="0" title="Активен"/><item id="1" title="В отключении"/><item id="2" title="Отключен"/><item id="3" title="Закрыт"/><item id="4" title="Приостановлен"/><item id="5" title="В подключении"/></list></data>

////

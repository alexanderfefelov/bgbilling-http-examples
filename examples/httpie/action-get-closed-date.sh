#!/usr/bin/env bash

. bgbilling.sh

call_action admin GetClosedDate

<< ////

Example session:

POST /billing/executer HTTP/1.1
Accept: */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 89
Content-Type: application/x-www-form-urlencoded; charset=utf-8
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

module=admin&action=GetClosedDate&user=api_maolaechuuke&pswd=onguushooyee&authToSession=0

HTTP/1.1 200 OK
Cache-control: no-cache, no-store, must-revalidate
Content-Type: text/xml;charset=UTF-8
Date: Wed, 21 Oct 2020 02:24:32 GMT
Expires: Thu, 01 Jan 1970 00:00:01 GMT
Last-Modified: Thu, 01 Jan 1970 00:00:01 GMT
Transfer-Encoding: chunked

<?xml version="1.0" encoding="UTF-8"?><data status="ok"><closed date="01.01.1990"/></data>

////

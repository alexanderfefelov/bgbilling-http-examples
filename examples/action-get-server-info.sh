#!/usr/bin/env bash

. bgbilling.sh

call_action service About

<< ////

Example session:

POST /billing/executer HTTP/1.1
Accept: */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 83
Content-Type: application/x-www-form-urlencoded; charset=utf-8
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

module=service&action=About&user=api_maolaechuuke&pswd=onguushooyee&authToSession=0

HTTP/1.1 200 OK
Cache-control: no-cache, no-store, must-revalidate
Content-Type: text/xml;charset=UTF-8
Date: Wed, 21 Oct 2020 02:26:47 GMT
Expires: Thu, 01 Jan 1970 00:00:01 GMT
Last-Modified: Thu, 01 Jan 1970 00:00:01 GMT
Transfer-Encoding: chunked

<?xml version="1.0" encoding="UTF-8"?><data status="ok"><modules><module build.number="307" build.time="06.10.2020 01:52:21" name="card" version="8.0" versionstring="8.0.307 / 06.10.2020 01:52:21"/><module build.number="824" build.time="17.10.2020 02:08:52" name="inet" version="8.0" versionstring="8.0.824 / 17.10.2020 02:08:52"/><module build.number="285" build.time="06.10.2020 01:52:31" name="npay" version="8.0" versionstring="8.0.285 / 06.10.2020 01:52:31"/><module build.number="272" build.time="06.10.2020 01:52:36" name="rscm" version="8.0" versionstring="8.0.272 / 06.10.2020 01:52:36"/><module build.number="205" build.time="06.10.2020 01:52:20" name="ru.bitel.bgbilling.plugins.bonus" version="8.0" versionstring="8.0.205 / 06.10.2020 01:52:20"/><module build.number="152" build.time="06.10.2020 01:52:24" name="ru.bitel.bgbilling.plugins.dispatch" version="8.0" versionstring="8.0.152 / 06.10.2020 01:52:24"/><module build.number="259" build.time="06.10.2020 01:52:24" name="ru.bitel.bgbilling.plugins.documents" version="8.0" versionstring="8.0.259 / 06.10.2020 01:52:24"/><module build.number="291" build.time="06.10.2020 01:52:27" name="ru.bitel.bgbilling.plugins.helpdesk" version="8.0" versionstring="8.0.291 / 06.10.2020 01:52:27"/><module build.number="128" build.time="06.10.2020 01:52:39" name="subscription" version="8.0" versionstring="8.0.128 / 06.10.2020 01:52:39"/></modules><server build.number="1305" build.time="17.10.2020 02:08:35" memory="236M/306M/455M" server="os: Linux; java: OpenJDK 64-Bit Server VM GraalVM CE 20.2.0, v.1.8.0_262" serverdbcharset="connection: utf8(utf8_general_ci), database: utf8(utf8_general_ci)" serverdbtime="master: 21.10.2020 02:26 UTC, slave@1: java.lang.NullPointerException&#10;    ВНИМАНИЕ: в некоторых БД поплыло время" serverfull="os: Linux amd64, 5.4.0-51-generic&#10;java: OpenJDK 64-Bit Server VM GraalVM CE 20.2.0, v.1.8.0_262&#10;jre home: /graalvm-ce-java8-20.2.0/jre" serverlocale="ru_RU" servertime="21.10.2020 02:26 UTC +0000 (Etc/UTC)" uptimestatus="Started: 20.10.2020 15:10:18 Uptime: 0 d 11:16:28" version="8.0" versionstring="8.0.1305 / 17.10.2020 02:08:35"/><client build.number="432" build.time="17.10.2020 02:05:58" version="8.0" versionstring="8.0.432 / 17.10.2020 02:05:58"/></data>

////

#!/usr/bin/env bash

. bgbilling.sh

readonly CALL='<n:getCurrentLicense xmlns:n="http://service.common.license.admin.kernel.bgbilling.bitel.ru/">
  </n:getCurrentLicense>'

call_soap_service $ENDPOINT_LICENSE "$CALL"

<< ////

Example session:

POST /billing/executer/ru.bitel.bgbilling.kernel.admin.license/LicenseService HTTP/1.1
Accept: text/xml, */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 437
Content-Type: text/xml; charset=utf-8
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

<?xml version="1.0" encoding="utf-8" ?>
    <e:Envelope xmlns:e="http://schemas.xmlsoap.org/soap/envelope/">
      <e:Header>
        <auth xmlns="http://ws.base.kernel.bgbilling.bitel.ru/" user="api_maolaechuuke" pswd="onguushooyee"></auth>
      </e:Header>
      <e:Body>
        <n:getCurrentLicense xmlns:n="http://service.common.license.admin.kernel.bgbilling.bitel.ru/">
  </n:getCurrentLicense>
      </e:Body>
    </e:Envelope>

HTTP/1.1 200 OK
Content-Type: text/xml;charset=utf-8
Date: Wed, 21 Oct 2020 06:23:35 GMT
Transfer-Encoding: chunked

<?xml version="1.0" ?><S:Envelope xmlns:S="http://schemas.xmlsoap.org/soap/envelope/"><S:Body><ns2:getCurrentLicenseResponse xmlns:ns2="http://service.common.license.admin.kernel.bgbilling.bitel.ru/"><return><count>0:0</count><date>31.12.2020</date><title>agr</title></return><return><count>0:0</count><date>31.12.2020</date><title>alfabank</title></return><return><count>0:0</count><date>31.12.2020</date><title>assist</title></return><return><count>0:20</count><date>31.12.2020</date><title>bill</title></return><return><count>0:0</count><date>31.12.2020</date><title>buyemoney</title></return><return><count>0:0</count><date>31.12.2020</date><title>bvcom</title></return><return><count>0:0</count><date>30.12.2050</date><title>card</title></return><return><count>0:20</count><date>31.12.2020</date><title>cerbercrypt</title></return><return><count>0:0</count><date>31.12.2020</date><title>drwebn</title></return><return><count>0:20</count><date>31.12.2020</date><title>email</title></return><return><count>0:0</count><date>31.12.2020</date><title>enaza</title></return><return><count>0:20</count><date>31.12.2020</date><title>forpost</title></return><return><count>0:0</count><date>31.12.2020</date><title>gazprombank</title></return><return><count>0:0</count><date>30.12.2050</date><title>gorod</title></return><return><count>0:20</count><date>31.12.2020</date><title>inet</title></return><return><count>0:0</count><date>31.12.2020</date><title>inet.wifi</title></return><return><count>0:20</count><date>31.12.2020</date><title>mangooffice</title></return><return><count>0:20</count><date>31.12.2020</date><title>megogo</title></return><return><count>0:20</count><date>31.12.2020</date><title>mobile</title></return><return><count>0:0</count><date>31.12.2020</date><title>mobimoney</title></return><return><count>0:0</count><date>31.12.2020</date><title>moneta</title></return><return><count>0:0</count><date>31.12.2020</date><title>mps</title></return><return><count>0:0</count><date>31.12.2020</date><title>mtsbank</title></return><return><count>0:0</count><date>31.12.2020</date><title>netpay</title></return><return><count>0:20</count><date>31.12.2020</date><title>npay</title></return><return><count>0:0</count><date>31.12.2020</date><title>onpay</title></return><return><count>0:0</count><date>31.12.2020</date><title>paykeeper</title></return><return><count>0:0</count><date>31.12.2020</date><title>paylinks</title></return><return><count>0:0</count><date>31.12.2020</date><title>paymaster</title></return><return><count>0:0</count><date>31.12.2020</date><title>payonline</title></return><return><count>0:0</count><date>31.12.2020</date><title>payture</title></return><return><count>0:20</count><date>31.12.2020</date><title>phone</title></return><return><count>0:0</count><date>31.12.2020</date><title>psb</title></return><return><count>0:0</count><date>31.12.2020</date><title>pscb</title></return><return><count>0:0</count><date>31.12.2020</date><title>qiwi</title></return><return><count>0:0</count><date>31.12.2020</date><title>rbkmoney</title></return><return><count>0:0</count><date>30.12.2050</date><title>rentsoft</title></return><return><count>0:0</count><date>31.12.2020</date><title>reports</title></return><return><count>0:0</count><date>31.12.2020</date><title>rfiec</title></return><return><count>0:0</count><date>31.12.2020</date><title>robokassa</title></return><return><count>0:0</count><date>31.12.2020</date><title>rscm</title></return><return><count>0:0</count><date>31.12.2020</date><title>ru.bitel.bgbilling.plugins.bonus</title></return><return><count>0:0</count><date>31.12.2020</date><title>ru.bitel.bgbilling.plugins.cashcheck</title></return><return><count>0:0</count><date>31.12.2020</date><title>ru.bitel.bgbilling.plugins.crm</title></return><return><count>0:0</count><date>31.12.2020</date><title>ru.bitel.bgbilling.plugins.dispatch</title></return><return><count>0:0</count><date>31.12.2020</date><title>ru.bitel.bgbilling.plugins.documents</title></return><return><count>0:0</count><date>31.12.2020</date><title>ru.bitel.bgbilling.plugins.helpdesk</title></return><return><count>0:0</count><date>31.12.2020</date><title>ru.bitel.bgbilling.plugins.sbpilot</title></return><return><count>0:0</count><date>31.12.2020</date><title>rurupay</title></return><return><count>0:0</count><date>31.12.2020</date><title>sberbank</title></return><return><count>0:0</count><date>31.12.2020</date><title>simplepay</title></return><return><count>0:20</count><date>31.12.2020</date><title>smarthouse</title></return><return><count>0:20</count><date>31.12.2020</date><title>subscription</title></return><return><count>0:0</count><date>30.12.2050</date><title>trayinfo</title></return><return><count>0:20</count><date>31.12.2020</date><title>tv</title></return><return><count>0:0</count><date>31.12.2020</date><title>twpg</title></return><return><count>0:0</count><date>31.12.2020</date><title>uniteller</title></return><return><count>0:20</count><date>31.12.2020</date><title>vidimax</title></return><return><count>0:20</count><date>31.12.2020</date><title>vod</title></return><return><count>0:20</count><date>31.12.2020</date><title>voice</title></return><return><count>0:0</count><date>31.12.2020</date><title>vseplatezhi</title></return><return><count>0:0</count><date>31.12.2020</date><title>wm</title></return><return><count>0:0</count><date>31.12.2020</date><title>yamoney</title></return></ns2:getCurrentLicenseResponse></S:Body></S:Envelope>

////

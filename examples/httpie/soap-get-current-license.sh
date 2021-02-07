#!/usr/bin/env bash

. bgbilling.sh

readonly CALL='<getCurrentLicense/>'

call_soap_service $ENDPOINT_LICENSE $NAMESPACE_LICENSE "$CALL"

<< ////

Example session:

POST /billing/executer/ru.bitel.bgbilling.kernel.admin.license/LicenseService HTTP/1.1
Accept: text/xml, */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 409
Content-Type: text/xml; charset=utf-8
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

<?xml version="1.0" encoding="utf-8" ?>
    <e:Envelope xmlns:e="http://schemas.xmlsoap.org/soap/envelope/">
      <e:Header>
        <auth xmlns="http://ws.base.kernel.bgbilling.bitel.ru/" user="api_maolaechuuke" pswd="onguushooyee"></auth>
      </e:Header>
      <e:Body xmlns="http://service.common.license.admin.kernel.bgbilling.bitel.ru/">
        <getCurrentLicense/>
      </e:Body>
    </e:Envelope>

HTTP/1.1 200 OK
Content-Type: text/xml;charset=utf-8
Date: Sun, 07 Feb 2021 04:47:29 GMT
Transfer-Encoding: chunked

<?xml version="1.0" ?>
<S:Envelope xmlns:S="http://schemas.xmlsoap.org/soap/envelope/">
    <S:Body>
        <ns2:getCurrentLicenseResponse xmlns:ns2="http://service.common.license.admin.kernel.bgbilling.bitel.ru/">
            <return>
                <count>0:0</count>
                <date>30.06.2021</date>
                <title>agr</title>
            </return>

... skipped ...

            <return>
                <count>0:0</count>
                <date>30.06.2021</date>
                <title>yamoney</title>
            </return>
        </ns2:getCurrentLicenseResponse>
    </S:Body>
</S:Envelope>

////

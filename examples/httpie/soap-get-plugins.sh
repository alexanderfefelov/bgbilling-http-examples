#!/usr/bin/env bash

. bgbilling.sh

readonly CALL='<getPlugins/>'

call_soap_service $ENDPOINT_PLUGINCFG $NAMESPACE_PLUGINCFG "$CALL"

<< ////

Example session:

POST /billing/executer/ru.bitel.bgbilling.kernel.admin.plugincfg/PlugincfgService HTTP/1.1
Accept: text/xml, */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 396
Content-Type: text/xml; charset=utf-8
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

<?xml version="1.0" encoding="utf-8" ?>
    <e:Envelope xmlns:e="http://schemas.xmlsoap.org/soap/envelope/">
      <e:Header>
        <auth xmlns="http://ws.base.kernel.bgbilling.bitel.ru/" user="api_maolaechuuke" pswd="onguushooyee"></auth>
      </e:Header>
      <e:Body xmlns="http://common.plugincfg.admin.kernel.bgbilling.bitel.ru/">
        <getPlugins/>
      </e:Body>
    </e:Envelope>

HTTP/1.1 200 OK
Content-Type: text/xml;charset=utf-8
Date: Sun, 07 Feb 2021 04:30:28 GMT
Transfer-Encoding: chunked

<?xml version="1.0" ?>
<S:Envelope xmlns:S="http://schemas.xmlsoap.org/soap/envelope/">
    <S:Body>
        <ns2:getPluginsResponse xmlns:ns2="http://common.plugincfg.admin.kernel.bgbilling.bitel.ru/">
            <return>
                <enabled>true</enabled>
                <id>1</id>
                <name>ru.bitel.bgbilling.plugins.bonus</name>
                <title>Bonus</title>
            </return>

... skipped ...

            <return>
                <enabled>true</enabled>
                <id>5</id>
                <name>ru.bitel.bgbilling.plugins.helpdesk</name>
                <title>Служба поддержки пользователей (HelpDesk)</title>
            </return>
        </ns2:getPluginsResponse>
    </S:Body>
</S:Envelope>

////

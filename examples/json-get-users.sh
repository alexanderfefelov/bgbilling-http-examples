#!/usr/bin/env bash

. bgbilling.sh

call_json_service $ENDPOINT_USER listUsers

<< ////

Example session:

POST /billing/executer/json/ru.bitel.bgbilling.kernel.bgsecure/UserService HTTP/1.1
Accept: application/json, */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 120
Content-Type: application/json
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

{
    "method": "listUsers",
    "params": null,
    "user": {
        "pswd": "onguushooyee",
        "user": "api_maolaechuuke"
    }
}

HTTP/1.1 200 OK
Content-Length: 2740
Date: Wed, 21 Oct 2020 02:30:39 GMT

{"status":"ok","exception":null,"message":"","tag":null,"data":{"return":[{"id":100,"title":" [ ??? (100) ]","login":"","name":"??? (100)","email":"","description":"","password":null,"date":"2020-10-20T15:14:50Z","status":0,"contractGroups":0,"domainIds":[],"contractGroupsMode":0,"ruleAccessObjectParameter":[],"ruleAccessContractParameter":[],"userGroups":[],"actionList":[],"personalAction":0,"contractPid":0,"contractCid":0,"config":"last_message_id=0\n","contractTitle":null,"configSetup":{},"statusString":"работает","showActionsPermitErrors":true},{"id":1,"title":"admin [ admin ]","login":"admin","name":"admin","email":"","description":"","password":"21232F297A57A5A743894A0E4A801FC3","date":null,"status":1,"contractGroups":0,"domainIds":[],"contractGroupsMode":0,"ruleAccessObjectParameter":[],"ruleAccessContractParameter":[],"userGroups":[],"actionList":[],"personalAction":0,"contractPid":0,"contractCid":0,"config":"","contractTitle":null,"configSetup":{},"statusString":"заблокирован","showActionsPermitErrors":true},{"id":101,"title":"api_maolaechuuke [ api_maolaechuuke ]","login":"api_maolaechuuke","name":"api_maolaechuuke","email":"","description":"","password":"F595CED9C0E16BD941DDDEEA0760B396","date":"2020-10-20T15:14:50Z","status":0,"contractGroups":0,"domainIds":[],"contractGroupsMode":1,"ruleAccessObjectParameter":[],"ruleAccessContractParameter":[],"userGroups":[],"actionList":[],"personalAction":0,"contractPid":0,"contractCid":0,"config":"","contractTitle":null,"configSetup":{},"statusString":"работает","showActionsPermitErrors":true},{"id":102,"title":"installer_hoziemusokar [ installer_hoziemusokar ]","login":"installer_hoziemusokar","name":"installer_hoziemusokar","email":"","description":"","password":"5CC4C5FAB79CCE3A07A2DCACDA0CEF75","date":"2020-10-20T15:14:50Z","status":0,"contractGroups":0,"domainIds":[],"contractGroupsMode":1,"ruleAccessObjectParameter":[],"ruleAccessContractParameter":[],"userGroups":[],"actionList":[],"personalAction":0,"contractPid":0,"contractCid":0,"config":"last_message_id=0\n","contractTitle":null,"configSetup":{},"statusString":"работает","showActionsPermitErrors":true},{"id":103,"title":"user_oameingafiec [ user_oameingafiec ]","login":"user_oameingafiec","name":"user_oameingafiec","email":"","description":"","password":"D9D1B45EA8D30CDA00B7CA9209F118A4","date":"2020-10-20T15:14:50Z","status":0,"contractGroups":0,"domainIds":[],"contractGroupsMode":1,"ruleAccessObjectParameter":[],"ruleAccessContractParameter":[],"userGroups":[],"actionList":[],"personalAction":0,"contractPid":0,"contractCid":0,"config":"","contractTitle":null,"configSetup":{},"statusString":"работает","showActionsPermitErrors":true}]}}

////

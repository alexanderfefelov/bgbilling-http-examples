#!/usr/bin/env bash

. bgbilling.sh

call_action admin.bgsecure GetAllModuleActions

<< ////

Example session:

POST /billing/executer HTTP/1.1
Accept: */*
Accept-Encoding: gzip, deflate
Connection: keep-alive
Content-Length: 104
Content-Type: application/x-www-form-urlencoded; charset=utf-8
Host: bgbilling-server.backpack.test:60080
User-Agent: docker-backpack-bgbilling

module=admin.bgsecure&action=GetAllModuleActions&user=api_maolaechuuke&pswd=onguushooyee&authToSession=0

HTTP/1.1 200 OK
Cache-control: no-cache, no-store, must-revalidate
Content-Type: text/xml;charset=UTF-8
Date: Wed, 21 Oct 2020 17:11:49 GMT
Expires: Thu, 01 Jan 1970 00:00:01 GMT
Last-Modified: Thu, 01 Jan 1970 00:00:01 GMT
Transfer-Encoding: chunked

<?xml version="1.0" encoding="UTF-8"?><data status="ok"><actions id="0" title="Основной модуль">
        <group title="Администрирование">
                <group title="Группы">
                        <action id="1" mask="module=admin.bgsecure;action=GroupList" title="Просмотр групп"/>
                        <action id="1" mask="module=admin.bgsecure;action=GroupList" title="Просмотр групп"/>
                        <action id="2" mask="module=admin.bgsecure;action=GetGroup" title="Просмотр группы"/>
                        <action id="3" mask="module=admin.bgsecure;action=UpdateGroup" title="Изменение имени группы"/>
                        <action id="4" mask="module=admin.bgsecure;action=UpdateGroupActions" title="Изменение разрешений группы"/>
                        <action id="5" mask="module=admin.bgsecure;action=DeleteGroup" title="Удаление группы"/>
                </group>

                <group title="Пользователи">
                        <service id="6" name="UserService" operation="findUsers" title="Поиск пользователей"/>
                        <service id="304" name="UserService" operation="listUsers" title="Просмотр пользователей"/>
                        <service id="7" name="UserService" operation="getUser" title="Просмотр пользователя"/>
                        <service id="8" name="UserService" operation="updateUser" title="Изменение пользователя"/>
                        <service id="9" name="UserService" operation="deleteUser" title="Удаление пользователя"/>
                </group>

... skipped ...

</actions><actions id="4" title="Документы (Documents)">
        <group title="Сервис">
                <group title="Документы">
                        <service id="1" name="DocumentsService" operation="getDocumentList" title="Просмотр списка документов"/>
                        <service id="2" name="DocumentsService" operation="updateDocument" title="Редактирование документа"/>
                        <service id="3" name="DocumentsService" operation="deleteDocument" title="Удаление документа"/>
                </group>

                <group title="Файлы">
                        <service id="4" name="DocumentsService" operation="getDocumentFileList" title="Просмотр списка файлов"/>
                        <service id="5" name="DocumentsService" operation="downloadDocumentFile" title="Скачка файла"/>
                        <service id="6" name="DocumentsService" operation="uploadDocumentFile" title="Закачка файла"/>
                        <service id="7" name="DocumentsService" operation="deleteDocumentFiles" title="Удаление файлов"/>
                </group>

                <group title="Генерация документов">
                        <service id="8" name="DocumentsService" operation="generateDocument" title="Генерация документа по шаблону"/>
                </group>
        </group>

        <group title="Cправочники">
                <group title="Типы документов">
                        <service id="9" name="DocumentsService" operation="documentTypeList" title="Получение списка типов документов"/>
                        <service id="10" name="DocumentsService" operation="documentTypeUpdate" title="Добавление/Редактирование типа документа"/>
                        <service id="11" name="DocumentsService" operation="documentTypeDelete" title="Удаление типа документа"/>
                </group>

                <group title="Журналы">
                        <service id="12" name="DocumentsService" operation="documentJournalList" title="Получение списка журналов документов"/>
                        <service id="13" name="DocumentsService" operation="documentJournalUpdate" title="Добавление/Редактирование журнала документа"/>
                        <service id="14" name="DocumentsService" operation="documentJournalDelete" title="Удаление журнала документа"/>
                </group>

                <group title="Статусы">
                        <service id="15" name="DocumentsService" operation="documentStatusList" title="Получение списка статусов документов"/>
                        <service id="16" name="DocumentsService" operation="documentStatusUpdate" title="Добавление/Редактирование статуса документа"/>
                        <service id="17" name="DocumentsService" operation="documentStatusDelete" title="Удаление статуса документа"/>
                        <service id="18" name="DocumentsService" operation="documentStatusSet" title="Установка статуса документу"/>
                </group>

                <group title="Шаблоны документов">
                        <service id="19" name="DocumentsPatternService" operation="getPatternList" title="Получение списка шаблонов документов"/>
                        <service id="20" name="DocumentsPatternService" operation="updatePattern" title="Редактирование шаблона документа"/>
                        <service id="21" name="DocumentsPatternService" operation="deletePattern" title="Удаление шаблона документа"/>
                </group>
        </group>

... skipped ...

        <group title="Cправочники">
                <group title="Документы">
                        <action id="15" mask="module=ru.bitel.bgbilling.plugins.helpdesk;action=DeleteDirectoryItem" title="Удаление элемента справочника"/>
                        <action id="16" mask="module=ru.bitel.bgbilling.plugins.helpdesk;action=GetListDirectory" title="Просмотр элементов справочника"/>
                        <action id="17" mask="module=ru.bitel.bgbilling.plugins.helpdesk;action=UpdateDirectoryItem" title="Редактирование справочника"/>
                </group>
        </group>

</actions></data>

////

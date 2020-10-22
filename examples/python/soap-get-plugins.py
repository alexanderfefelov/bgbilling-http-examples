#!/usr/bin/env python3


import configparser
import json
import urllib.request


config = configparser.ConfigParser(interpolation=configparser.ExtendedInterpolation())
config.read('bgbilling.conf')

endpoint_url = config.get('http.soap', 'url_endpoint_plugincfg')
request_template = config.get('http.soap', 'request_template')

request_parameters = '''
    <n:getPlugins xmlns:n="http://common.plugincfg.admin.kernel.bgbilling.bitel.ru/">
    </n:getPlugins>
'''
request_xml = request_template % request_parameters

request = urllib.request.Request(endpoint_url)
request.add_header('Content-Type', 'text/xml; charset=utf-8')
response = urllib.request.urlopen(request, request_xml.encode('utf-8'))
response_body = response.read().decode('utf8')
print(response_body)

#!/usr/bin/env python3


import configparser
import json
import urllib.request


config = configparser.ConfigParser(interpolation=configparser.ExtendedInterpolation())
config.read('bgbilling.conf')

url = config.get('http.json', 'url_endpoint_dynamic_code')
request_template = config.get('http.json', 'request_template')

method = 'getDynamicClasses'
parameters = '{}'

request_json = request_template % (method, parameters)
request = urllib.request.Request(url)
request.add_header('Content-Type', 'application/json; charset=utf-8')
response = urllib.request.urlopen(request, json.dumps(json.loads(request_json)).encode('utf8'))
response_body = response.read().decode('utf8')
print(response_body)

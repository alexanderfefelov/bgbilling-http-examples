#!/usr/bin/env python3


import configparser
import json
import urllib.request


config = configparser.ConfigParser(interpolation=configparser.ExtendedInterpolation())
config.read('bgbilling.conf')

endpoint_url = config.get('http.json', 'url_endpoint_plugincfg')
request_template = config.get('http.json', 'request_template')

method = 'getPlugins'
parameters = '{}'

request_json = request_template % (method, parameters)
request = urllib.request.Request(endpoint_url)
request.add_header('Content-Type', 'application/json; charset=utf-8')
response = urllib.request.urlopen(request, json.dumps(json.loads(request_json)).encode('utf-8'))
response_body = response.read().decode('utf8')
print(response_body)

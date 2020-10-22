#!/usr/bin/env python3


import configparser
import urllib.request


config = configparser.ConfigParser(interpolation=configparser.ExtendedInterpolation())
config.read('bgbilling.conf')

url = config.get('http.action', 'url_api')
request_parameters = dict(config.items('http.action.parameters'))

request_parameters.update({
    'module': 'admin.bgsecure',
    'action': 'GetAllModuleActions'
})
request_data = urllib.parse.urlencode(request_parameters)

request = urllib.request.Request(url)
response = urllib.request.urlopen(request, request_data.encode('ascii'))
response_body = response.read().decode('utf8')
print(response_body)

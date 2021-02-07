#!/usr/bin/env python3


import configparser
import urllib.request


config = configparser.ConfigParser(interpolation=configparser.ExtendedInterpolation())
config.read('bgbilling.conf')

url = config.get('http.action', 'url_api')

parameters = dict(config.items('http.action.parameters'))
parameters.update({
    'module': 'admin.bgsecure',
    'action': 'GetAllModuleActions'
})

data = urllib.parse.urlencode(parameters)
request = urllib.request.Request(url)
response = urllib.request.urlopen(request, data.encode('ascii'))
response_body = response.read().decode('utf8')
print(response_body)

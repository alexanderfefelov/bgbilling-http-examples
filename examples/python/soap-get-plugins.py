#!/usr/bin/env python3


import configparser
import urllib.request


config = configparser.ConfigParser(interpolation=configparser.ExtendedInterpolation())
config.read('bgbilling.conf')

url = config.get('http.soap', 'url_endpoint_plugincfg')
request_template = config.get('http.soap', 'request_template')
namespace = config.get('http.soap', 'namespace_plugincfg')

call = '<getPlugins/>'

request_xml = request_template % (namespace, call)
request = urllib.request.Request(url)
request.add_header('Content-Type', 'text/xml; charset=utf-8')
response = urllib.request.urlopen(request, request_xml.encode('utf8'))
response_body = response.read().decode('utf8')
print(response_body)

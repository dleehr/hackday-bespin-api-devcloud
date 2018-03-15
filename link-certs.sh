#!/bin/bash

mkdir -p /etc/external/ssl
ln -s /bespin-web-certs/tls.crt /etc/external/ssl/cacert.pem
ln -s /bespin-web-certs/tls.key /etc/external/ssl/privkey.pem

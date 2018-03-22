#!/bin/bash

set -ex

# oc new-project gcb-bespin
oc project gcb-bespin
oc create -f bespin-db-config.yml
oc create -f bespin-db.yml
oc create -f bespin-api-config.yml
oc create -f bespin-api.yml

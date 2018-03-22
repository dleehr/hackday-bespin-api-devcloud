#!/bin/bash

set -ex

# Create a project
oc new-project gcb-bespin

# Make sure we're using the right project
oc project gcb-bespin

# Create configs
oc create -f bespin-db-config.yml
oc create -f bespin-api-config.yml
oc create -f bespin-revproxy-config.yml

# Now create the services
oc create -f bespin-db.yml
oc create -f bespin-api.yml
oc create -f bespin-revproxy.yml

# Finally, create the one route into the proxy
oc create -f bespin-revproxy-route.yml

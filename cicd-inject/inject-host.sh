#!/bin/bash

# Extract server URL from WSDL
SERVER_URL=$(xmllint --xpath '//*[local-name()="address"]/@location' "$1" | awk -F'"' '{print $2}')

# Add server URL to OpenAPI spec
yq eval ".servers = [{\"url\": \"$SERVER_URL\"}]" openapi.yaml -i

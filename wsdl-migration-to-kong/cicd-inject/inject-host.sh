#!/bin/bash
set -e  # Exit immediately on error

# Extract server URL from WSDL
SERVER_URL=$(xmllint --xpath '//*[local-name()="address"]/@location' "$1" | awk -F'"' '{print $2}' | sed 's#\(http://[^/]*\).*#\1#')

# Verify URL extraction
if [ -z "$SERVER_URL" ]; then
  echo "Failed to extract server URL from WSDL"
  exit 1
fi

# Add server URL to OpenAPI spec
yq eval -i '
  .servers = [{
    "url": "'"$SERVER_URL"'",
    "description": "Extracted from WSDL"
  }]
' openapi.yaml

echo "Injected server URL: $SERVER_URL"

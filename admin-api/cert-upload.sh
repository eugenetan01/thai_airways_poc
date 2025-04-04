#!/bin/bash
CERT_CONTENT=$(<../certs/localhost.pem)
KEY_CONTENT=$(<../certs/localhost.key)

curl --request POST \
  --url https://us.api.konghq.com/v2/control-planes/f9b64612-2389-4150-96c2-0d2ef60d119b/core-entities/certificates \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --header 'Authorization: Bearer kpat_SoTacK3d7kGk7SJO0CIFU2wDHPe8xwX0kxPzrMIGfouOfspQB' \
  --data "$(jq -n --arg cert "$CERT_CONTENT" --arg key "$KEY_CONTENT" \
      '{cert: $cert, key: $key}')"

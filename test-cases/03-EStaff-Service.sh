#!/bin/bash

curl --request POST \
  --url "https://localhost:8000/Est/ESTService" \
  --header "User-Agent: sample-client/1.0" \
  --header "Content-Type: application/xml" \
  --data '<?xml version="1.0" encoding="UTF-8"?>
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ws="http://ws.estr.fusionware.com">
  <soapenv:Header/>
  <soapenv:Body>
    <ws:retrivePnrWs>
      <arg1>
        <alteaOfficeId>BKKTG08IW</alteaOfficeId>
      </arg1>
    </ws:retrivePnrWs>
  </soapenv:Body>
</soapenv:Envelope>'

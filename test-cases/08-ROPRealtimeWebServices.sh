#!/bin/bash

curl --request POST \
  --url http://localhost:8000/tgropweb/ROPRealTimeServices \
  --header 'Authorization: Basic VEJfUk9QX0NPTTp0YnJvcGNvbTk5' \
  --header 'Content-Type: application/xml' \
  --header 'password: tbropcom99' \
  --header 'username: TB_ROP_COM' \
  --data '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ws="http://ws.realtime.rop.thaiairways.com">
  <soapenv:Header>
    <wsse:Security soapenv:mustUnderstand="1"
                   xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd"
                   xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
      <wsse:UsernameToken wsu:Id="UsernameToken-8A9DA7E194FD527996172861571441659">
        <wsse:Username>TB_ROP_COM</wsse:Username>
        <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">tbropcom99</wsse:Password>
        <wsse:Nonce EncodingType="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary">ANbDReK2IV7ClhY64B/faD==</wsse:Nonce>
        <wsu:Created>2025-02-07T10:22:54.416Z</wsu:Created>
      </wsse:UsernameToken>
    </wsse:Security>
  </soapenv:Header>
  <soapenv:Body>
    <ws:getMainMemberProfile>
      <getMainMemberProfileRQ>
        &lt;?xml version="1.0" encoding="UTF-8"?&gt;
        &lt;MainMemberProfileRQ&gt;
          &lt;MemberID&gt;ZZ00005&lt;/MemberID&gt;
        &lt;/MainMemberProfileRQ&gt;
      </getMainMemberProfileRQ>
    </ws:getMainMemberProfile>
  </soapenv:Body>
</soapenv:Envelope>'

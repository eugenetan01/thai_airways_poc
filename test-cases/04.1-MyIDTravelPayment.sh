#!/bin/bash

# Paths to your client certificate and key
CERT_PATH="../certs/ca.pem"

curl --request POST \
  --url "https://localhost:8443/MyIdTravel/PaymentInterfaceService" \
  --cacert "$CERT_PATH" \
  --header "Content-Type: application/xml" \
  --header "User-Agent: sample-client/1.0" \
  --data '<?xml version="1.0" encoding="UTF-8"?>
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ser="http://service.payment.myidtravel.lhsystems.com">
  <soapenv:Header/>
  <soapenv:Body>
    <ser:authorizePaymentRequestSchema>
      <ser:Airline>TG</ser:Airline>
      <ser:PaymentProcessId>000000</ser:PaymentProcessId>
      <ser:ExtPaymentProcessId></ser:ExtPaymentProcessId>
      <ser:User>TgLHmid1</ser:User>
      <ser:Password>cHecepHu?2VV</ser:Password>
      <ser:Amount DecimalPlaces="2" ValueFormat="#0.00">
        <ser:NUCValue>0.0</ser:NUCValue>
        <ser:Currency>USD</ser:Currency>
        <ser:Value>0.01</ser:Value>
        <ser:PreferredValue>0.0</ser:PreferredValue>
        <ser:BSR>0.0</ser:BSR>
      </ser:Amount>
      <ser:Creditcard>
        <ser:CCNumber>4111111111111111</ser:CCNumber>
        <ser:CCValidCode>123</ser:CCValidCode>
        <ser:CCVendor>VI</ser:CCVendor>
        <ser:CCValidity>1024</ser:CCValidity>
        <ser:CCName>ABCD</ser:CCName>
        <ser:FOP>CREDIT_CARD</ser:FOP>
        <ser:PaymentProcessId>000000</ser:PaymentProcessId>
        <ser:isPaidViaPSP>false</ser:isPaidViaPSP>
        <ser:createTSTwithoutPaymentInfo>false</ser:createTSTwithoutPaymentInfo>
        <ser:UATPTamara>false</ser:UATPTamara>
      </ser:Creditcard>
      <ser:DoSettlement>true</ser:DoSettlement>
      <ser:Pnr>?</ser:Pnr>
    </ser:authorizePaymentRequestSchema>
  </soapenv:Body>
</soapenv:Envelope>'

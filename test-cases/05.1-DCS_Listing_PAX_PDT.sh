#!/bin/bash

curl --request POST \
  --url http://localhost:8000/pdt/DCSListingPax \
  --header 'Authorization: Basic Ym1fY3JtOlRHNTBfY1JNX0JCbQ==' \
  --header 'Content-Type: application/xml' \
  --data '<?xml version="1.0" encoding="UTF-8"?>
<soapenv:Envelope xmlns:head="http://xml.accenture.com/common/header" xmlns:pax="http://xml.thaiairways.com/dcs/listing/pax" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:v1="http://xml.thaiairways.com/dcs/listing/pax/getpaxlistbyflight/v1_0">
  <soapenv:Header>
    <wsse:Security soapenv:mustUnderstand="1" xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
      <wsse:UsernameToken wsu:Id="UsernameToken-2DEF9E79A7C263B94A17260429573901">
        <wsse:Username>bm_crm</wsse:Username>
        <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordText">TG50_cRM_BBm</wsse:Password>
        <wsse:Nonce EncodingType="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary">TS8djbXhqXzhT/W417TgyH==</wsse:Nonce>
        <wsu:Created>2025-01-28T10:40:37.389Z</wsu:Created>
      </wsse:UsernameToken>
    </wsse:Security>
    <head:ReqHeader>
      <head:ReqDateTime>2015-09-11T07:00:00+07:00</head:ReqDateTime>
      <head:ReqTxnID>TESTER454545</head:ReqTxnID>
      <head:SvcVer>v1_0</head:SvcVer>
      <head:IsLastTxn>true</head:IsLastTxn>
      <head:Credentials>
        <head:MWCredential>
          <head:ReqID>BM_CRM</head:ReqID>
          <head:ReqPwd/>
          <head:UserID/>
        </head:MWCredential>
      </head:Credentials>
      <head:MWTxnID>BM_CRM</head:MWTxnID>
    </head:ReqHeader>
  </soapenv:Header>
  <soapenv:Body>
    <pax:GetPaxListByFlightReq>
      <v1:flightInfo>
        <v1:carrierDetails>
          <v1:marketingCarrier>TG</v1:marketingCarrier>
        </v1:carrierDetails>
        <v1:flightDetails>
          <v1:flightNumber>676</v1:flightNumber>
        </v1:flightDetails>
        <v1:departureDate>2025-02-02</v1:departureDate>
        <v1:boardPoint>BKK</v1:boardPoint>
      </v1:flightInfo>
    </pax:GetPaxListByFlightReq>
  </soapenv:Body>
</soapenv:Envelope>'

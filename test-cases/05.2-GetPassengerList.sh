#!/bin/bash

curl --request POST \
  --url http://localhost:8000/pdt/1ASIWDA2TG \
  --header 'Content-Type: text/xml' \
  --data '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:sec="http://xml.amadeus.com/2010/06/Security_v1" xmlns:link="http://wsdl.amadeus.com/2010/06/ws/Link_v1" xmlns:ses="http://xml.amadeus.com/2010/06/Session_v3">
    <soapenv:Header xmlns:wsa="http://www.w3.org/2005/08/addressing" xmlns:typ="http://xml.amadeus.com/2010/06/Types_v1" xmlns:iat="http://www.iata.org/IATA/2007/00/IATA2010.1">
        <sec:AMA_SecurityHostedUser>
            <sec:UserID POS_Type="1" RequestorType="U" PseudoCityCode="123" AgentDutyCode="GS">
                <typ:RequestorID>
                    <iat:CompanyName>DummyCompany</iat:CompanyName>
                </typ:RequestorID>
            </sec:UserID>
        </sec:AMA_SecurityHostedUser>
        <wsse:Security xmlns:wsse="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-secext-1.0.xsd" xmlns:wsu="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-wssecurity-utility-1.0.xsd">
            <wsse:UsernameToken>
                <wsse:Username>dummyUser</wsse:Username>
                <wsse:Password Type="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-username-token-profile-1.0#PasswordDigest">dGhpc2lzYWZha2VwYXNzd29yZA==</wsse:Password>
                <wsse:Nonce EncodingType="http://docs.oasis-open.org/wss/2004/01/oasis-200401-wss-soap-message-security-1.0#Base64Binary">bm9uY2VFeGFtcGxl</wsse:Nonce>
                <wsu:Created>2025-03-27T12:00:00Z</wsu:Created>
            </wsse:UsernameToken>
        </wsse:Security>
        <wsa:To>https://dummy.endpoint.com/service</wsa:To>
        <wsa:Action>http://dummy.action.com/APALRQ_19_5_1A</wsa:Action>
        <wsa:MessageID>urn:uuid:12345678-abcd-1234-ef00-1234567890ab</wsa:MessageID>
        <link:TransactionFlowLink>
            <link:Consumer>
                <link:UniqueID>dummyTransactionId123</link:UniqueID>
            </link:Consumer>
        </link:TransactionFlowLink>
    </soapenv:Header>
    <soapenv:Body>
        <DCSLST_GetPassengerList>
            <flightInfo>
                <carrierDetails>
                    <marketingCarrier>TG</marketingCarrier>
                </carrierDetails>
                <flightDetails>
                    <flightNumber>676</flightNumber>
                </flightDetails>
                <departureDate>20250207</departureDate>
                <boardPoint>BKK</boardPoint>
            </flightInfo>
        </DCSLST_GetPassengerList>
    </soapenv:Body>
</soapenv:Envelope>
'

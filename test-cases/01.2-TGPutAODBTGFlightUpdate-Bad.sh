#!/bin/bash

curl -s -w "\nHTTP Status: %{http_code}\n" --request POST \
  --url http://localhost:8000/TG_PutAODBTGFlightUpdate \
  --header 'Content-Type: application/xml' \
  --header 'User-Agent: sample-client/1.0' \
  --data '<?xml version="1.0" encoding="UTF-8"?>
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:inc="http://incoming.as.tg">
   <soapenv:Header/>
   <soapenv:Body>
      <inc:updateFlightInformation>
         <requestXML>
            &lt;FlightScheduleUpdate&gt;
              &lt;HeaderData&gt;
                &lt;ADID&gt;A&lt;/ADID&gt;
                &lt;FLNO&gt;TG 260&lt;/FLNO&gt;
                &lt;STOAD&gt;20250204&lt;/STOAD&gt;
                &lt;STOAT&gt;0320&lt;/STOAT&gt;
                &lt;ATYP&gt;U&lt;/ATYP&gt;
              &lt;/HeaderData&gt;
              &lt;MessageData&gt;
                &lt;PSTA&gt;A3&lt;/PSTA&gt;
                &lt;PABSD&gt;20250204&lt;/PABSD&gt;
                &lt;PABST&gt;0309&lt;/PABST&gt;
                &lt;PAESD&gt;20250204&lt;/PAESD&gt;
                &lt;PAEST&gt;0349&lt;/PAEST&gt;
              &lt;/MessageData&gt;
            &lt;/FlightScheduleUpdate&gt;
         </requestXML>
      </inc:updateFlightInformation>
   </soapenv:Body>
</soapenv:Envelope>'

#!/bin/bash

curl --request POST \
  --url 'https://localhost:8000/CrewKitServiceREST/services/FlightSchedule?FltLocalDateFrom=01OCT24&FltLocalDateTo=01OCT24' \
  --header 'Authorization: Basic Q3Jld0tpdFNfUmVzdDpjS3NSQDMwMDU=' \
  --header 'Content-Type: application/json' \
  --header 'User-Agent: sample-client/1.0'

curl --request POST \
  --url https://dev-wsgw.thaiairways.com/getMealList \
  --header 'Authorization: Basic dGdfbWVhbDp0Z21lYWxwYSQkdzByZA==' \
  --header 'Content-Type: application/json' \
  --data '{    "origin_city": "BKK",    "cabin_class": "Y",    "flight_number": "600",    "flight_date":"2024-03-25"   }'

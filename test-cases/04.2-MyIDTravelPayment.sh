#!/bin/bash

# Paths to your client certificate and key
CERT_PATH="../certs/localhost.pem"

curl --request POST \
  --url "http://localhost:8443/TG/API/Payment" \
  --header "Content-Type: application/xml" \
  --header "User-Agent: sample-client/1.0" \
  --cacert "$CERT_PATH" \
  --data '<?xml version="1.0" encoding="UTF-8"?>
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:c2p="http://2c2ppaymentservice/">
  <soapenv:Header/>
  <soapenv:Body>
    <c2p:Accept>
      <c2p:EncryptedRequest>MIAGCSqGSIb3DQEHA6CAMIACAQAxggFAMIIBPAIBADAkMBYxFDASBgNVBAMTC1NpbmFwdElRIENBAgoeg+bBAAAAAAAMMA0GCSqGSIb3DQEBAQUABIIBAAq51cvx4WLQ8Bwrl8ufym/1OnuG0/N8OPYJ232mxQJJfu3uQJViiKxABReSS1qpUnUTEzH+HTmLGyU/1ZqoXeHa+B9CKSSJJEbcUxPn+CYdoHkB7WJzi3fKI5ZP9INaX8wcmznFt/n19weB8RnTj5tIGIT/wOFAR1SI/dexMtLvwB9ogMNjar7ggEZUfS5akQF8gldTqWiknwFYHZNcjBsqHJUzpyYk1365adkbHPhFDXiT3KckX0wECTYHFpVYcWbcCT9vKWX9+aG0jqO3ZmaZXO5zZOQVH0Q5ramvX5onUO0pYawBwEHCkSWIPf4M0fvmYEefzfetYb4qXbFCgWkwgAYJKoZIhvcNAQcBMBQGCCqGSIb3DQMHBAhmekbn4BRPbaCABIIBcAQt+cw5iHdBejpCS3QUUkxS2kZXYm/PKDQqAhJUHHx1w9qeVTYDIJpRggEevd+HmRn8290MRpZ6VzrYtvUKR6kq01n9eMsvvXQyvn+OjYRkVaVmRBjAXMDFkpbgRmASyc8pcFxKoDOT1k0zx2cgg0p6SK9Vt9IGVW9PEDFj9xyDJ0MN9YCajMWeSoF4ExokNeKac1QV7e32qNGct8z3LRKrjE3OQgUkWbzKR78n5rBu3Xvm/ZmAZJvP89LF5D9xwqw8KiEuiiCydekab5kT0jUFvFD2714LZq840gwhTaIGmUtLt2flljT0BnCR3wgyp1JY9eETqJ30LWiG7B7eSe4ijkNpCMmYuXFkur+ZjdPp3xNajqJ4PCkqHlX9mecZoQAFs4zyf6iBI25uYSC9g8mzSXGPt80633UTcj/WJdyBDM8zyk2dzvWd0zeuqXTFQ8aMY9zeJGdjBZ3MalI0y1kkQbbBlK9WUnVDbtPNEVBQAAAAAAAAAAAAAA==</c2p:EncryptedRequest>
    </c2p:Accept>
  </soapenv:Body>
</soapenv:Envelope>'

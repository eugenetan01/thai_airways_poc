# References:

- `openssl x509 -req -in kong.lan.csr -CA ca.pem -CAkey ca.key -CAcreateserial -out localhost.pem -days 1825 -sha256 -extfile localhost.ext`

# Reset:
`deck gateway reset --konnect-addr https://us.api.konghq.com --konnect-token kpat_FvZgLjJ2hgmRNnH2uYJ7HxmBUfvNevmi3bMiEqKEqOAgA0xjT  --konnect-control-plane-name thai-airways-poc --select-tag gitops`

# Setup:

## Infrastructure:
- See ./docker-cmd to spin up data plane in PAM server

## XML Validation
- See the ./prefunction/validate-xml.lua - attach the code into a pre-plugin
- cURL to be used for a bad response:
  ```bash
  curl --request POST \
    --url http://10.80.228.23:8000/AIMSInterface/TG_PutAODBTGFlightUpdateService/TG_PutAODBTGFlightUpdateServiceImpl \
    --header 'Content-Type: text/xml' \
    --header 'User-Agent: sample-client/1.0' \
    --cookie 'AWSALBTG=ivzYnFv3NVqHD9tZ9B0vePDZl5jHHkC1UNDliiYewOVKEaSpR0jKJb4q7kPnF%2BJ0R9LyLYzJFECpcLRinnVGJJVZDW8N3Xy5UeSFk2Qr6dDnRmqizw7XSfxixiZgBAjyq4tksvdxXzl8vGvk4gGh7emLh2LC%2BbyC3RUSA8veSoCyWzNhcUQ%3D; AWSALB=RfusiZP6Sf44zJ3CJKzljzohHPpQsi1RXKlDavpWUVHBY54s3n4Df9J2fOT7lhyGsfv2imSD%2FwTnquFA16VKCXWyHFLjK93mTZCKUQQNHSTrMbGN8zfrOvEBtMJU; unknowncookie=!FR8PbOq9%2B%2FYAR0NuMK3Ev9HrDtkQIxmiE%2FB4OCkQIuPQSSJuPYIf3yycmbMwFGQVmEBjPHOsvDW%2F8NWnYIWC0cWqzm3O01UbipmmQow4BTQO' \
    --data '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:inc="http://incoming.as.tg/">
     <soapenv:Header/>
     <soapenv:Body>
        <inc:updateFlightInformation>
    <arg0>
      &lt;FlightScheduleUpdate&gt; &lt;HeaderData&gt; &lt;ADID&gt;A&lt;/ADID&gt; &lt;STOAD&gt;20240902&lt;/STOAD&gt; &lt;STOAT&gt;0950&lt;/STOAT&gt; &lt;ATYP&gt;U&lt;/ATYP&gt; &lt;/HeaderData&gt; &lt;MessageData&gt; &lt;GTA1&gt;G3&lt;/GTA1&gt; &lt;GA1BD&gt;20240902&lt;/GA1BD&gt; &lt;GA1BT&gt;0948&lt;/GA1BT&gt; &lt;GA1ED&gt;20240902&lt;/GA1ED&gt; &lt;GA1ET&gt;1103&lt;/GA1ET&gt; &lt;URNO&gt;9007453845&lt;/URNO&gt; &lt;/MessageData&gt; &lt;/FlightScheduleUpdate&gt;
    </arg0>
        </inc:updateFlightInformation>
     </soapenv:Body>
  </soapenv:Envelope>'
  ```
- cURL to be used for a good response:
  ```bash
  curl --request POST \
    --url http://10.80.228.23:8000/AIMSInterface/TG_PutAODBTGFlightUpdateService/TG_PutAODBTGFlightUpdateServiceImpl \
    --header 'Content-Type: text/xml' \
    --header 'User-Agent: sample-client/1.0' \
    --cookie 'AWSALBTG=ivzYnFv3NVqHD9tZ9B0vePDZl5jHHkC1UNDliiYewOVKEaSpR0jKJb4q7kPnF%2BJ0R9LyLYzJFECpcLRinnVGJJVZDW8N3Xy5UeSFk2Qr6dDnRmqizw7XSfxixiZgBAjyq4tksvdxXzl8vGvk4gGh7emLh2LC%2BbyC3RUSA8veSoCyWzNhcUQ%3D; AWSALB=RfusiZP6Sf44zJ3CJKzljzohHPpQsi1RXKlDavpWUVHBY54s3n4Df9J2fOT7lhyGsfv2imSD%2FwTnquFA16VKCXWyHFLjK93mTZCKUQQNHSTrMbGN8zfrOvEBtMJU; unknowncookie=!FR8PbOq9%2B%2FYAR0NuMK3Ev9HrDtkQIxmiE%2FB4OCkQIuPQSSJuPYIf3yycmbMwFGQVmEBjPHOsvDW%2F8NWnYIWC0cWqzm3O01UbipmmQow4BTQO' \
    --data '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:inc="http://incoming.as.tg/">
     <soapenv:Header/>
     <soapenv:Body>
        <inc:updateFlightInformation>
    <arg0>
      &lt;FlightScheduleUpdate&gt; &lt;HeaderData&gt; &lt;ADID&gt;A&lt;/ADID&gt; &lt;FLNO&gt;TG 633&lt;/FLNO&gt; &lt;STOAD&gt;20240902&lt;/STOAD&gt; &lt;STOAT&gt;0950&lt;/STOAT&gt; &lt;ATYP&gt;U&lt;/ATYP&gt; &lt;/HeaderData&gt; &lt;MessageData&gt; &lt;GTA1&gt;G3&lt;/GTA1&gt; &lt;GA1BD&gt;20240902&lt;/GA1BD&gt; &lt;GA1BT&gt;0948&lt;/GA1BT&gt; &lt;GA1ED&gt;20240902&lt;/GA1ED&gt; &lt;GA1ET&gt;1103&lt;/GA1ET&gt; &lt;URNO&gt;9007453845&lt;/URNO&gt; &lt;/MessageData&gt; &lt;/FlightScheduleUpdate&gt;
    </arg0>
        </inc:updateFlightInformation>
     </soapenv:Body>
  </soapenv:Envelope>'
  ```

## certs
1. Follow steps [here](https://support.konghq.com/support/s/article/How-to-setup-Kong-to-serve-an-SSL-certificate-for-API-requests) to set up certs for upload
  - you can do so via UI as well
2. Replace the control plane id and PAT in the `./admin-api/cert-upload.sh` script
3. Upload cert to Kong via the `./admin-api/cert-upload.sh` script
  - `chmod 775 cert-upload.sh`
  - `./admin-api/cert-upload.sh`
4. Verify in UI that cert has been uploaded

## Import WSDL to Kong conf
1. Ensure github repo is in `dev` branch
2. Check the `.github/workflows/upload-wsdl.yaml` to show that it is converting soap -> swagger -> openapi -> Kong conf -> inject plugins -> deck sync
3. run the github pipeline with:
  ```bash
  git commit --allow-empty -m "Trigger Build"
  git push origin dev
  ```
4. Check the github action to see pipeline runs without errors
5. Check the Konnect org to see the services added from the WSDL
6. Test the API in Postman by importing the collection: `./postman/ROPRealTimeServicesService.postman_collection.json`
  - Ensure VPN is enabled

# References:
- `openssl x509 -req -in kong.lan.csr -CA ca.pem -CAkey ca.key -CAcreateserial -out localhost.pem -days 1825 -sha256 -extfile localhost.ext`

# Reset:
`deck gateway reset --konnect-addr https://us.api.konghq.com --konnect-token kpat_FvZgLjJ2hgmRNnH2uYJ7HxmBUfvNevmi3bMiEqKEqOAgA0xjT  --konnect-control-plane-name thai-airways-poc --select-tag gitops`

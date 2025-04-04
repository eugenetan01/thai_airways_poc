local function validate_payload()
    local raw_body = kong.request.get_raw_body()

    -- Basic empty check
    if not raw_body or raw_body == "" then
        kong.response.exit(400, { message = "Error: Invalid payload" })
    end

    -- Validate basic structure using string patterns
    local valid = true

    -- Check outer SOAP structure
    valid = valid and raw_body:find("soapenv:Envelope") ~= nil
    valid = valid and raw_body:find("soapenv:Body") ~= nil
    valid = valid and raw_body:find("inc:updateFlightInformation") ~= nil

    -- Check inner XML structure (escaped entities)
    valid = valid and raw_body:find("&lt;FlightScheduleUpdate&gt;") ~= nil
    valid = valid and raw_body:find("&lt;HeaderData&gt;") ~= nil
    valid = valid and raw_body:find("&lt;MessageData&gt;") ~= nil

    -- Check required fields (escaped entities)
    valid = valid and raw_body:find("&lt;ADID&gt;") ~= nil
    valid = valid and raw_body:find("&lt;FLNO&gt;") ~= nil
    valid = valid and raw_body:find("&lt;STOAD&gt;") ~= nil
    valid = valid and raw_body:find("&lt;STOAT&gt;") ~= nil
    valid = valid and raw_body:find("&lt;ATYP&gt;") ~= nil
    valid = valid and raw_body:find("&lt;PSTA&gt;") ~= nil
    valid = valid and raw_body:find("&lt;PABSD&gt;") ~= nil
    valid = valid and raw_body:find("&lt;PABST&gt;") ~= nil
    valid = valid and raw_body:find("&lt;PAESD&gt;") ~= nil
    valid = valid and raw_body:find("&lt;PAEST&gt;") ~= nil
    valid = valid and raw_body:find("&lt;URNO&gt;") ~= nil

    if not valid then
        kong.response.exit(400, { message = "Error: Invalid payload structure" })
    end
end

validate_payload()

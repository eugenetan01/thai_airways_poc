local function validate_payload()
    local raw_body = kong.request.get_raw_body()

    -- Validate payload exists
    if not raw_body or raw_body == "" then
        kong.response.exit(400, { message = "Empty payload: XML body required" })
    end

    -- Define validation requirements
    local validation_checks = {
        {
            pattern = "soapenv:Envelope",
            error = "Missing SOAP envelope declaration"
        },
        {
            pattern = "soapenv:Body",
            error = "Missing SOAP body section"
        },
        {
            pattern = "inc:updateFlightInformation",
            error = "Missing updateFlightInformation operation"
        },
        {
            pattern = "&lt;FlightScheduleUpdate&gt;",
            error = "Missing FlightScheduleUpdate root element"
        },
        {
            pattern = "&lt;HeaderData&gt;.-&lt;/HeaderData&gt;",
            error = "Invalid HeaderData section"
        },
        {
            pattern = "&lt;MessageData&gt;.-&lt;/MessageData&gt;",
            error = "Invalid MessageData section"
        },
        -- Required field patterns
        {
            pattern = "&lt;ADID&gt;.-&lt;/ADID&gt;",
            error = "Missing ADID (Aircraft ID)"
        },
        {
            pattern = "&lt;FLNO&gt;.-&lt;/FLNO&gt;",
            error = "Missing FLNO (Flight Number)"
        },
        -- Add other required fields following the same pattern
    }

    -- Execute validation checks
    for _, check in ipairs(validation_checks) do
        if not raw_body:find(check.pattern) then
            kong.response.exit(400, {
                message = "Validation failed",
                error = check.error,
                required_pattern = check.pattern
            })
        end
    end
end

-- Execute validation
validate_payload()

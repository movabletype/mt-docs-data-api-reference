# Group Common API

Common API

# Version [/version]
## Get server API version [GET]
Retrieves Data API version of the server.

**This endpoint is available in Movable Type 6.2.4 or later.**

This endpoint does not need /v3 or something API endpoint version identifier.  
You can  call like: https://host/path/your-mt-data-api.cgi/version

+ Response 200 (application/json)

        {
          "endpointVersion": "v3",
          "apiVersion": "3.01"
        }

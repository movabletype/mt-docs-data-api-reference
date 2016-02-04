# Group Common

Common API

## Get the API current API version  [/version]
### getAPIVersion [GET]

This endpoint does not need /v3 or something API endpoint version identifier.  
You can  call like: https://host/path/your-mt-data-api.cgi/version

+ Response 200 (application/json)

        {
          "endpointVersion": "v3",
          "apiVersion": "3.01"
        }


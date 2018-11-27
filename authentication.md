# Group Authentication

## Authentication [/authentication]

### User authentication by username and password [POST]
Create a new session and access token. This is like sign-in. 

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Attributes
        + username (required, string) - The username for authentication.
        + password (required, string) - The password for authentication. From version 3, it was changed to use web services password instead of the password. 
        + clientId (required, string) - If you want to create a new session or access token, you should specify the clientId. If you specify  session id via "X-MT-Authorization" in the request header, clientId is not required.
        + remember (optional, boolean) - If true (generally, "1" is specified.), a new session will be created as a persistent session. If you want to specify false, you can pass "" or "0" to this parameter.
        + mtDataApiLoginMagicToken (optional, string) - This is not required if you authenticate except via browser. If this parameter is passed and valid Movable Type will set cookie in order to start a session.

+ Response 200 (application/json)

            {
              "accessToken" : "EowKdyeBcEUNbiFEXlp0bdQz5RJgdkJYLbBDRJ4m",
              "sessionId" : "8VtaTLTLp8V9OR5Dz40hO7by8wf0wbCsCkBue0Xv",
              "expiresIn" : 3600,
              "remember" : false
            }

+ Response 401 (application/json)

            {
              "error" : {
                "code" : 401,
                "message" : "Invalid login"
              }
            }

### Invalidate current session [DELETE]
Invalidate current session. This is like sign-out. All access tokens related to that session will invalidated too.

This method accepts DELETE or POST with __method=DELETE.

+ Attributes
    + clientId (optional, string) - If you specify session id via "X-MT-Authorization" in the request header, clientId is not required.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth sessionId={session_id}

+ Response 200 (application/json)

            {
              "status" : "success"
            }

## User authentication via sing-in Screen [/authorization{?redirectUrl,clientId}]

### User authentication via sing-in Screen [GET]
When this endpoint called from application, user will move to sign-in screen of Movable Type.  
And then user will move to new location that specified in the redirectUrl parameter when user has been authenticated.

If your application is running on web browser, you should use this endpoint instead of `/authenticatoin`.

+ Request

    + Parameters
        + redirectUrl (required, string) - Specify the redirect location where the user moves after sign in.
        + clientId (required, string) - The client identifier. 

+ Response 200 (text/html)


## Token [/token]

### Create a new access token [POST]

Create a new access token that related to current session.


+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth sessionId={SessionId}

    + Attributes
        + clientId (optional, string) - If you specify  session id via "X-MT-Authorization" in the request header, clientId is not required.

+ Response 200 (application/json)

            {
              "accessToken" : "EowKdyeBcEUNbiFEXlp0bdQz5RJgdkJYLbBDRJ4m",
              "expiresIn" : 3600
            }

+ Response 401 (application/json)

            {
              "error" : {
                "code" : 401,
                "message" : "Unauthorized"
              }
            }

### Invalidate current access token. This is not sign-out. [DELETE]

Invalidate current access token. This is not sign-out. If the browser has active session ID, new access token can be obtained easily.

This method accepts DELETE and POST with __method=DELETE.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth accessToken={AccessToken}

+ Response 200 (application/json)

            {
              "status" : "success"
            }


# Group Authentication

## authorization [/authorization?(redirectUrl,clientId)]

### Show sign in screen, then redirect to application screen. [GET]

+ Parameters
    + redirectUrl (required, string) ... After a successful sign-in, you will be redirected to the specified URL with "#_login".
    + clientId (required, string) ... The client ID of the application. You should use same clientid in you app.

+ Response 200 (application/json)

## authentication [/authentication]

### Create new session and access token. This is like sign-in. [POST]

+ Attributes
    + username (required, string) ... The username to authenticate.
    + password (required, string) ... The password of the user.
    + remember (optional, boolean) ... If true (generally, "1" is specified.), a new session will be created as a persistent session. If you want to specify false, you can pass "" or "0" to this parameter.
    + clientId (optional, string) ... If you want create a new session or access token, you should specify the clientId. If you specify  session id via "X-MT-Authorization" in the request header, clientId is not required.
    + mtDataApiLoginMagicToken (optional, string) ... This is not required if you authenticate except via browser. If this parameter is passed and valid the MT will set cookie in order to start a session.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            username=<Your Sign-in Name>&password=<Your sign-in Password>&clientid=<Your Client ID>

+ Response 200 (application/json)

            {
              "accessToken" : "EowKdyeBcEUNbiFEXlp0bdQz5RJgdkJYLbBDRJ4m",
              "sessionId" : "8VtaTLTLp8V9OR5Dz40hO7by8wf0wbCsCkBue0Xv",
              "expiresIn" : 3600,
              "remember" : true
            }

+ Response 401 (application/json)

            {
              "error" : {
                "code" : 401,
                "message" : "Invalid login"
              }
            }

## revokeSession [/authentication]
### Invalidate current session. This is like logout. [DELETE]

+ Invalidate current session. This is like logout. All access tokens related to that session are invalidated too.
+ This method accepts DELETE and POST with __method=DELETE.

+ Attributes
    + clientId (optional, string) ... If you specify session id via "X-MT-Authorization" in the request header, clientId is not required.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth sessionId=<SessionId>

+ Response 200 (application/json)

            {
              "status" : "success"
            }

## token [/token]

### Create new access token related to current session. [POST]

+ Attributes
    + clientId (optional, string) ... If you specify  session id via "X-MT-Authorization" in the request header, clientId is not required.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth sessionId=<SessionId>

+ Response 200 (application/json)

            {
              "accessToken" : "EowKdyeBcEUNbiFEXlp0bdQz5RJgdkJYLbBDRJ4m",
              "expiresIn" : 3600,
            }

+ Response 401 (application/json)

            {
              "error" : {
                "code" : 401,
                "message" : "Unauthorized"
              }
            }

## RevokeToken [/token]
### Invalidate current access token. This is not logout. [DELETE]

+ Invalidate current access token. This is not logout. If the browser has active session id, new access token can be obtained easily.
+ This method accepts DELETE and POST with __method=DELETE.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth accessToken=<AccessToken>

+ Response 200 (application/json)

            {
              "status" : "success"
            }


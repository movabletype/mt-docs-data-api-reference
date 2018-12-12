# Group Users

## User Collection [/users{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,lockout,dateField,dateFrom,dateTo}]

### User Collection [GET]
Retrieve a list of users. This list does not include commenters.

:::note
Authentication required if you want to include inactive users or to get the private properties. Required permissions is follows.

* System Administrator
* Manage Users
:::


+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `name,displayName,email,url` (optional, string) - The comma separated field name list to search.
    + limit: `10` (optional, number) - Maximum number of users to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `name` (optional, string) - The field name for sort. You can specify one of following values
        * id
        * name
    + sortOrder: `descend` (optional, string) -
        * descend (default): Return users in descending order.
        * ascend: Return users in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Users resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of users to include to result.
    + excludeIds (optional, string) - The comma separated ID list of users to exclude from result.
    + status (optional, string) - Filter by users's status.
        * active: status is Active
        * disabled: status is Disabled.
        * pending: status is Pending
    + lockout - Filter by user's lockout status.
        * locked_out: Locked out user only
        * not_locked_out: Not locked out user only
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Entry], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve users.

    + body

## Create a new user [POST]
**Authentication required.**

Create a new user. This endpoint requires following permissions.

* System Administrtor
* Manage Users

Post form data is follows.

* user (User, required) - The single user resource.

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            user={"email" : "aikawa@example.com","displayName" : "Ichiro Aikawa","name" : "aikawa","password":"password"}

+ Response 200 (application/json)

    + Attributes (User)

+ Response 403 (application/json)

    Do not have permission to retrieve users.

    + body


## User [/users/{user_id}{?fields}]

+ Parameters
    + user_id (required) - The user ID or the word 'me'.

### Fetch single user [GET]
Fetch single user by its ID.

:::note
Authentication required if want to get inactive user or want to get the private properties.
Required permissions is follows.

* System Administrator
* Manage Users
:::

+ Parameters
    + fields (optional, string) - The field list to retrieve as part of the Users resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.

+ Response 200 (application/json)

    + Attributes (User)

+ Response 403 (application/json)

    Do not have permission to retrieve users.

    + body

+ Response 404 (application/json)

    User not found.

    + body

### Update user [PUT]
**Authentication required.**

Update user. This endpoint requires following permissions if target user is not themselves.

+ System Administrator
* Manage User

:::note
+ This method accepts PUT and POST with __method=PUT.
:::

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            user={"displayName": "New Name"}

+ Response 200 (application/json)

    + Attributes (User)

+ Response 403 (application/json)

    Do not have permission to update user.

    + body

+ Response 404 (application/json)

    User not found.

    + body

+ Response 405 (application/json)

    Request method is not 'PUT' or 'POST' with '__method=PUT'

    + body

### Delete user. [DELETE]
**Authentication required.**

Delete user. This endpoint requires following permissions.

+ System Administrator
* Manage User

:::note
+ This method accepts DELETE and POST with __method=DELETE.
:::
:::warning
+ Cannot delete themselves. Also, cannot delete system administrator.
:::

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (application/json)

    + Attributes (User)

+ Response 403 (application/json)

    Do not have permission to delete user.

    + body

+ Response 404 (application/json)

    User not found.

    + body

+ Response 405 (application/json)

    Request method is not 'DELETE' or 'POST' with '__method=DELETE'

    + body



## Unlock user [/users/{user_id}/unlock]

+ Parameters
    + user_id (required, number) - The user ID.

### Unlock user [POST]
**Authentication required.**
Unlock user account. This endppoint requires followint permission.

* System Administrator

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (application/json)

    + Attributes
        + status: `success` (string) - Result

+ Response 403 (application/json)

    Do not have permission to unlock user.

    + body

+ Response 404 (application/json)

    User not found.

    + body


## Send recover link by user ID [/users/{user_id}/recover_password]

+ Parameters
    + user_id (required, number) - The user ID.

### Send recover link by user ID [POST]
**Authentication required.**
Send a email that contains the link for password recovery to user. This endppoint requires followint permission.

* System Administrator

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (application/json)

    + Attributes
        + status: `success` (string) - Result
        * message (string) - Result message

+ Response 403 (application/json)

    Do not have permission.

    + body

+ Response 404 (application/json)

    User not found.

    + body

## Send recover link by email address  [/recover_password]

### Send recover link by email address  [POST]
Send a email that contains the link for password recovery to user.  
In this endpoint, to search for the user in an e-mail address but if more than one user has the same e-mail address, it will be judged by the username.

:::warning
+ This method always returns successful by security reason.
:::

Post form data is following.
+ email (required, string) - The e-mail address to search for.
+ name (optional, string) - The username for to decide user.

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            email=<Email address for user>&name=<Name for user>

+ Response 200 (application/json)

    + Attributes
        + status: `success` (string) - Result
        * message (string) - Result message

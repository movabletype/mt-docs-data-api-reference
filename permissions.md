# Group Permissions

## Permission Collection [/permissions{?limit,offset,sortBy,sortOrder,fields,blogIds,dateField,dateFrom,dateTo}]

### Permission Collection [GET]
**Authentication required**
Retrieve a list of permissions. Only system administrator can call this endpoint.

+ Parameters
    + limit: `25` (optional, number) - Maximum number of permissions to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `bog_id` (optional, string) - The field name for sort. You can specify one of following values
        * id
        * blog_id
        * author_id
        * created_by
        * created_on
    + sortOrder: `ascend` (optional, string) - 
        * descend (default): Return permissions in descending order.
        * ascend: Return permissions in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Permissions resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + blogIds (optional, number) - The comma-separated blog id list that to be included in the result.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Request

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Permission], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve a permission list.

    + body


## Permission Collection by user [/users/{user_id}/permissions{?limit,offset,sortBy,sortOrder,fields,blogIds,dateField,dateFrom,dateTo}]

+ Parameters
    + user_id (required) - The user ID or 'me'.

### Permission Collection by user [GET]
**Authentication required**
Retrieve a list of permissions by user.

System administrator can retrieve all user's permission list. Other users, can retrieve their own permission list.

+ Parameters
    + limit: `25` (optional, number) - Maximum number of permissions to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `bog_id` (optional, string) - The field name for sort. You can specify one of following values
        * id
        * blog_id
        * author_id
        * created_by
        * created_on
    + sortOrder: `ascend` (optional, string) - 
        * descend (default): Return permissions in descending order.
        * ascend: Return permissions in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Permissions resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + blogIds (optional, number) - The comma-separated blog id list that to be included in the result.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Request

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Permission], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve a permission list.

    + body


## Permission Collection by site [/sites/{site_id}/permissions{?limit,offset,sortBy,sortOrder,fields,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.

### Permission Collection by site [GET]
**Authentication required**
Retrieve a list of permissions by site.

System administrator can retrieve permission list for every site. Site Administrator can retrieve their own site permission list.

+ Parameters
    + limit: `25` (optional, number) - Maximum number of permissions to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `bog_id` (optional, string) - The field name for sort. You can specify one of following values
        * id
        * blog_id
        * author_id
        * created_by
        * created_on
    + sortOrder: `ascend` (optional, string) - 
        * descend (default): Return permissions in descending order.
        * ascend: Return permissions in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Permissions resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Request

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Permission], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve a permission list.

    + body


## Permission Collection by role [/roles/{role_id}/permissions{?limit,offset,sortBy,sortOrder,fields,blogIds,dateField,dateFrom,dateTo}]

+ Parameters
    + role_id (required, number) - The role ID.

### Permission Collection by role [GET]
**Authentication required**
Retrieve a list of permissions by role. Only system administrator can call this endpoint.

+ Parameters
    + limit: `25` (optional, number) - Maximum number of permissions to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `bog_id` (optional, string) - The field name for sort. You can specify one of following values
        * id
        * blog_id
        * author_id
        * created_by
        * created_on
    + sortOrder: `ascend` (optional, string) - 
        * descend (default): Return permissions in descending order.
        * ascend: Return permissions in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Permissions resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + blogIds (optional, number) - The comma-separated blog id list that to be included in the result.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Request

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Permission], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve a permission list.

    + body


## Grant role by site [/sites/{site_id}/permissions/grant]

+ Parameters
  + site_id (required, number) - The site ID.

### Grant role by site [POST]
**Authentication required**

Grant a role to user by site. System administrators can grant roles to users for each site. Site Administrators can grant roles to users for their own site.

Post form data is follows
+ role_id (required, number) - The role ID.
+ user_id (required, number) - The user ID.

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            role_id=1&user_id=1

+ Response 200 (application/json)

    + Attributes
        + status: `success` (string) - result of this request.


## Grant role by user [/users/{user_id}/permissions/grant]

+ Parameters
  + user_id (required, number) - The user ID.

### Grant role by user [POST]
**Authentication required**

Grant a role to user. System administrators can grant roles to users for each site. Site Administrators can grant roles to users for their own site.

Post form data is follows.
+ site_id (required, number) - The site ID.
+ role_id (required, number) - The role ID.

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            role_id=1&site_id=1

+ Response 200 (application/json)

    + Attributes
        + status: `success` (string) - result of this request.

## Revoke permission by site [/sites/{site_id}/permissions/revoke]

+ Parameters

  + site_id (required, number) - The site ID.

### Revoke permission by site [POST]
**Authentication required**

Revoke a role from user by site. System administrators can revoke roles from users for each site. Site Administrators can revoke roles from users for their own site.

Post form data is follows.
+ user_id (required, number) - The user ID.
+ role_id (required, number) - The role ID.

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            role_id=1&user_id=1

+ Response 200 (application/json)

    + Attributes
        + status: `success` (string) - result of this request.


## Revoke role by user [/users/{user_id}/permissions/revoke]

+ Parameters

  + user_id (required, number) - The user ID.

### Revoke role by user [POST]
**Authentication required**

Revoke a role from user by site. System administrators can revoke roles from users for each site. Site Administrators can revoke roles from users for their own site.


Post form data is follows.
+ site_id (required, number) - The site ID.
+ role_id (required, number) - The role ID.

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            role_id=1&site_id=1

+ Response 200 (application/json)

    + Attributes
        + status: `success` (string) - result of this request.

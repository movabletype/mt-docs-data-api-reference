# Group Users

This is the Users resource.

Property Name | Type | Data Type | Database Column | Private | Read Only | Description | Version
------------ | ------------- | ------------ | ------------ | ------------- | ------------ | ------------ | ------------
createdBy | Object | User | - | Y | Y | Created user of this user. | v2
createdBy.displayName | value | string | mt_author.author_nickname | Y | Y | The display name of this user creator. | v2
createdBy.id | value | number | mt_author.author_created_by | Y | Y | The ID of this user creator. | v2
createdBy.userpicUrl | value | string | mt_author.author_userpic_url | | Y | The URL of this user creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. | v2
createdDate | value | iso 8601 datetime | mt_author.author_created_on | - | Y | Created date of this user. | v2
customFields | value | Field | - | - | Y | The list of customfields data of this user. | v2
customField.basename | value | string | mt_field.field_basename | - | Y | The basename of this customfield. | v2
customField.value | value | string | mt_author_meta.* | - | - | The value of this customfield. | v2
dateFormat | value | string | mt_author.author_date_format | Y | | The date formatting for this user. | v2
displayName | value | string | mt_author.author_nickname |  |  | The public display name for this user. | v1
email | value | string | mt_author.author_email | Y |  | The email address for this user. | v1
id | value | number | mt_author.author_id | Y | Y | The unique ID for this user. | v1
isSuperuser | value | boolean | | Y | Y | <dl><dt>true</dt><dd>This user have permission for system administration.</dd><dt>false</dt><dd>This user does not have permission for system administration.</dd></dl> | v2
language | value | string | mt_author.author_preferred_language | | | The preferred language for this user. <dl><dt>Available values</dt><dd><ul><li>de</li><li>en-us</li><li>es</li><li>fr</li><li>nl</li><li>ja</li></ul></dd></dl>| v1
lockedOut | value | boolean | mt_author.author_locked_out_time | Y | Y | <dl><dt>true</dt><dd>This user is currently locked out.</dd><dt>false</dt><dd>This user is not locked out.</dd></dl> | v2
modifiedBy | Object | User | - | - | Y | Last modified user of this user. | v2
modifiedBy.displayName | value | string | mt_author.author_nickname | - | Y | The display name of this user modifier. | v2
modifiedBy.id | value | number | mt_author.author_modified_by | - | Y | The ID of this user modifier. | v2
modifiedBy.userpicUrl | value | string | mt_author.author_userpic_url | - | Y | The URL of this user modifier's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. | v2
modifiedDate | value | iso 8601 datetime | mt_author.author_modified_on | - | Y | Last modified date of this user. | v2
name | value | string | mt_author.author_name | | | The account name for this user. [update in v2] This column was changed to updatable from v2.| v1
password | value | string | mt_author.author_password | Y | Write Only | The password for this user. This property is write  only. | v2
updatable | value | boolean |  |  | Y | <dl><dt>true</dt><dd>The user who accessed can update this user.</dd><dt>false</dt><dd>The user who accessed cannot update this user.</dd></dl> | v1
url | value | string | mt_author.author_url |  |  | The web site URL for this user. | v1
userpicUrl | value | string |  |  | Y | The profile photo URL for this user. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. | v1
status | value | string | mt_author.author_status | Y | | The status for this user. Available value is follows.<dl><dt>Active</dt><dd>The status is active. The user can do anything within his/her permissions.<dt>Disabled</dt><dd>The status is disabled. The user cannot do anything.<dt>Pending</dt><dd>The status is pending. The user is waiting for approval by the administrator. Therefore, this user cannot do anything. | v2
systemPermissions | ARRAY | string | - | Y | - | The list of system permissions which this user have. Only system administrator can get this property | v2
tagDelimiter | value | string | mt_author.author_entry_prefs | Y | | The tag delimiter character for this user. Available value is follow. <dl><dt>comma</dt><dd>Separator character is single comma.</dd><dt>space</dt><dd>Separator character is single space</dd></dl>| v2
textFormat | value | string | mt_author.author_text_format | Y | | The text formatting for this user. | v2

        {
          "status" : "Active",
          "createdBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "updatable" : true,
          "lockedOut" : false,
          "isSuperuser" : true,
          "dateFormat" : "relative",
          "systemPermissions" : [
            "administer",
            "create_website",
            "create_blog",
            "edit_templates",
            "manage_plugins",
            "view_log"
          ],
          "email" : "ytakayama@sixapart.com",
          "userpicUrl" : null,
          "url" : "",
          "id" : "1",
          "tagDelimiter" : "comma",
          "displayName" : "Yuji Takayama",
          "modifiedBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "modifiedDate" : "2015-03-26T17:12:18+09:00",
          "language" : "en-us",
          "name" : "takayama",
          "textFormat" : "0",
          "createdDate" : "2015-03-23T14:53:52+09:00",
          "customFields" : []
        }

## listUsers [/users(?search, searchFields, limit, offset, sortBy, sortOrder, fields, includeIds, excludeIds, status, lockout)]

### New in v2.0: Retrieve a list of users in the specified site. [GET]

+ Authentication is required if want to include non-active users. Also, want to get private properties.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of users.

**Permissions**

+ administer
    + for retrieve non-active users
    + for read private properties

+ Parameters
    + search (optional, string) ... Search query.
    + searchFields = `name,displayName,email,url` (optional, string) ... The comma separated field name list to search.
    + limit = `10` (optional, number) ... Maximum number of users to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `name` (optional, string) ... The field name for sort. You can specify one of following values<ul><li>id</li><li>name</li></ul>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return users in descending order.</dd><dt>ascend</dt><dd>Return users in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Users resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of users to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of users to exclude from result.
    + status (optional, string) ... Filter by users's status. <dl><dt>active</dt><dd>status is Active</dd><dt>disabled</dt><dd>status is Disabled.</dd><dt>pending</dt><dd>status is Pending</dd></dl>
    + lockout ... Filter by user's lockout status. <dl><dt>locked_out</dt><dd>Locked out user only</dd><dt>not_locked_out</dt><dd>Not locked out user only</dd></dl>

+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
            {
              "status" : "Active",
              "createdBy" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "updatable" : true,
              "lockedOut" : false,
              "isSuperuser" : true,
              "dateFormat" : "relative",
              "systemPermissions" : [
                "administer",
                "create_website",
                "create_blog",
                "edit_templates",
                "manage_plugins",
                "view_log"
              ],
              "email" : "ytakayama@sixapart.com",
              "userpicUrl" : null,
              "url" : "",
              "id" : "1",
              "tagDelimiter" : "comma",
              "displayName" : "Yuji Takayama",
              "modifiedBy" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "modifiedDate" : "2015-03-26T17:12:18+09:00",
              "language" : "en-us",
              "name" : "takayama",
              "textFormat" : "0",
              "createdDate" : "2015-03-23T14:53:52+09:00",
              "customFields" : []
            }
          ]
        }

## createUser [/users]

### New in v2.0: Create a new user. [POST]

+ Authentication is required.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to create a new user.

**Permissions**

+ administer

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
entry | Object | Yes | | Single Entries resource

+ Parameters
    + site_id (required, number) ... The site ID.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            user={"email" : "aikawa@example.com","displayName" : "Ichiro Aikawa","name" : "aikawa","password":"password"}

+ Response 200 (application/json)

        {
          "status" : "Active",
          "createdBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "updatable" : true,
          "lockedOut" : false,
          "isSuperuser" : false,
          "dateFormat" : "relative",
          "systemPermissions" : [],
          "email" : "aikawa@example.com",
          "userpicUrl" : null,
          "url" : null,
          "id" : "2",
          "tagDelimiter" : "comma",
          "displayName" : "Ichiro Aikawa",
          "modifiedDate" : "2015-03-27T10:45:43+09:00",
          "language" : "ja",
          "name" : "aikawa",
          "textFormat" : 0,
          "createdDate" : "2015-03-27T10:45:43+09:00",
          "customFields" : []
        }

## getUser [/users/:user_id(?fields)]

### Retrieve a single user by its own ID. [GET]

+ Authentication is required if want to get non-active user or want to get private properties.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to get the user.
404 | Not Found | User not found.

**Permissions**

+ administer

+ Parameters
    + user_id (required, number or the word 'me') ... The user ID.
    + fields (optional, string) ... The field list to retrieve as part of the Users resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.

+ Response 200 (application/json)

        {
          "status" : "Active",
          "createdBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "updatable" : true,
          "lockedOut" : false,
          "isSuperuser" : true,
          "dateFormat" : "relative",
          "systemPermissions" : [
            "administer",
            "create_website",
            "create_blog",
            "edit_templates",
            "manage_plugins",
            "view_log"
          ],
          "email" : "ytakayama@sixapart.com",
          "userpicUrl" : null,
          "url" : "",
          "id" : "1",
          "tagDelimiter" : "comma",
          "displayName" : "Yuji Takayama",
          "modifiedBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "modifiedDate" : "2015-03-26T17:12:18+09:00",
          "language" : "en-us",
          "name" : "takayama",
          "textFormat" : "0",
          "createdDate" : "2015-03-23T14:53:52+09:00",
          "customFields" : []
        }

## updateUser and deleteUser [/users/:user_id]

### Update oneself or another one's user data. [PUT]

+ Authentication is required.
+ This method accepts PUT and POST with __method=PUT.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to update user.
404 | Not Found | User not found.
405 | Method Not Allowed | Request method is not 'PUT' or 'POST' with '__method=PUT'

**Permissions**

+ administer
    + If you want to update another one's or non-active user.

+ Parameters
    + user_id (required, number or the word 'me') ... The user ID.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            user={"displayName": "New Name"}

+ Response 200 (application/json)

        {
          "status" : "Active",
          "createdBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "updatable" : true,
          "lockedOut" : false,
          "isSuperuser" : false,
          "dateFormat" : "relative",
          "systemPermissions" : [],
          "email" : "aikawa@example.com",
          "userpicUrl" : null,
          "url" : null,
          "id" : "2",
          "tagDelimiter" : "comma",
          "displayName" : "New Name",
          "modifiedDate" : "2015-03-27T10:45:43+09:00",
          "language" : "ja",
          "name" : "aikawa",
          "textFormat" : "0",
          "createdDate" : "2015-03-27T10:45:43+09:00",
          "customFields" : []
        }

### New in v2.0: Delete user. [DELETE]

+ Authentication is required.
+ This method accepts DELETE and POST with __method=DELETE.
+ Cannot delete oneself. Also, cannot delete system administrator user.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to delete user.
404 | Not Found | User not found.
405 | Method Not Allowed | Request method is not 'DELETE' or 'POST' with '__method=DELETE'

**Permissions**

+ administer

+ Parameters
    + user_id (required, number) ... The user ID.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (application/json)

        {
          "status" : "Active",
          "createdBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "updatable" : true,
          "lockedOut" : false,
          "isSuperuser" : false,
          "dateFormat" : "relative",
          "systemPermissions" : [],
          "email" : "aikawa@example.com",
          "userpicUrl" : null,
          "url" : null,
          "id" : "2",
          "tagDelimiter" : "comma",
          "displayName" : "New Name",
          "modifiedDate" : "2015-03-27T10:45:43+09:00",
          "language" : "ja",
          "name" : "aikawa",
          "textFormat" : "0",
          "createdDate" : "2015-03-27T10:45:43+09:00",
          "customFields" : []
        }

## unlockUser [/users/:user_id/unlock]

### Unlock user account. [POST]

+ Authentication is required.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to unlock user.
404 | Not Found | User not found.

**Permissions**

+ administer

+ Parameters
    + user_id (required, number) ... The user ID.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (application/json)

        {
          "status": "success"
        }

## recoverPasswordForUser [/users/:user_id/recover_password]

### Send the link for password recovery to specified user by email. [POST]

+ Authentication is required.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to send password recovery mail.
404 | Not Found | User not found.

**Permissions**

+ administer

+ Parameters
    + user_id (required, number) ... The user ID.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (application/json)

        {
          "status": "success",
          "message": <Result message>
        }

## recoverPassword [/recover_password]

### Send the link for password recovery to specified email. [POST]

+ This method always returns successful code if it does not found a user, because security reason.
+ Authentication is not required.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.

**Permissions**

+ administer

+ Parameters
    + user_id (required, number) ... The user ID.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            email=<Email address for user>&name=<Name for user>

+ Response 200 (application/json)

        {
          "status": "success",
          "message": <Result message>
        }


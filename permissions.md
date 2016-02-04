# Group Permissions

This is the Permissions resource.
In this case, Permission means Association record.

Property Name | Type | Data Type | Database Column | Private | Read Only | Description | Version
------------ | ------------- | ------------ | ------------ | ------------- | ------------ | ------------ | ------------
blog | Ojbect | Blog | |  | Y | The blog of this permission. | v2
blog.id | value | number | mt_permission.permission_blog_id |  | Y | The ID of the blog. | v1
id | value | number | mt_permission.permission_id |  | Y | The ID for this permission. | v2
createdBy | Object | User | |  | Y | Created user of this permission. | v2
createdBy.displayName | value | string | mt_author.author_nickname |  | Y | The display name of this permission creator. | v2
createdBy.id | value | number | mt_permission.permission_created_by |  | Y | The ID of this permission creator. | v2
createdBy.userpicUrl | value | string | mt_author.author_userpic_url |  | Y | The URL of this permission creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. | v2
createdDate | value | iso 8601 datetime | mt_permission.permission_created_on |  | Y | Created date of this permission. | v2
permissions | ARRAY | string | mt_permission.permission_permissions, mt_permission.permissoin_restrictions |  | Y | The list of granted permissions. The restricted permissions are excluded from this list. | v2
roles | ARRAY | Role | |  | Y | The list of roles. | v2
role.id | value | number | mt_role.role_id |  | Y | The ID of this role. | v2
role.name | value | string | mt_role.role_name |  | Y | The name of this role. | v2
user | Object | User | |  | Y | The user of this permission. | v2
user.displayName | value | string | mt_author.author_nickname |  | Y | The nickname for this permission user. | v2
user.id | value | number | mt_permission.permission_author_id |  | Y | The ID for this permission user. | v2
user.userpicUrl | value | string | mt_author.author_userpic_url |  | Y | The URL of this permission user's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. | v2

        {
          "roles" : [
            {
              "name" : "Website Administrator",
              "id" : 1
            }
          ],
          "permissions" : [
            "administer",
            "administer_blog",
            "administer_website",
            "comment",
            "create_blog",
            "create_post",
            "create_website",
            "edit_all_posts",
            "edit_assets",
            "edit_categories",
            "edit_config",
            "edit_notifications",
            "edit_tags",
            "edit_templates",
            "manage_feedback",
            "manage_member_blogs",
            "manage_pages",
            "manage_plugins",
            "manage_themes",
            "manage_users",
            "publish_post",
            "rebuild",
            "save_image_defaults",
            "send_notifications",
            "set_publish_paths",
            "upload",
            "view_blog_log",
            "view_log"
          ],
          "createdBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "user" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "blog" : {
            "id" : "2"
          },
          "id" : "3",
          "createdDate" : "2015-03-21T19:37:53+09:00"
        }

## listPermissions [/permissions(?limit, offset, sortBy, sortOrder, fields, blogIds)]

### New in v2.0: Retrieve a list of permissions. [GET]

+ Authentication is required
+ Need Administer privilege.

+ Parameters
    + limit = `25` (optional, number) ... Maximum number of permissions to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `bog_id` (optional, string) ... The field name for sort. You can specify one of following values<ul><li>id</li><li>blog_id</li><li>author_id</li><li>created_by</li><li>created_on</li></ul>
    + sortOrder = `ascend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return permissions in descending order.</dd><dt>ascend</dt><dd>Return permissions in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Permissions resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + blogIds (optional, number) ... The comma-separated blog id list that to be included in the result.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Request

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>


+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
            {
              "roles" : [
                {
                  "name" : "Website Administrator",
                  "id" : 1
                }
              ],
              "permissions" : [
                "administer",
                "administer_blog",
                "administer_website",
                "comment",
                "create_blog",
                "create_post",
                "create_website",
                "edit_all_posts",
                "edit_assets",
                "edit_categories",
                "edit_config",
                "edit_notifications",
                "edit_tags",
                "edit_templates",
                "manage_feedback",
                "manage_member_blogs",
                "manage_pages",
                "manage_plugins",
                "manage_themes",
                "manage_users",
                "publish_post",
                "rebuild",
                "save_image_defaults",
                "send_notifications",
                "set_publish_paths",
                "upload",
                "view_blog_log",
                "view_log"
              ],
              "createdBy" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "user" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "blog" : {
                "id" : "2"
              },
              "id" : "3",
              "createdDate" : "2015-03-21T19:37:53+09:00"
            }
          ]
        }

## listPermissionsForUser [/users/:user_id/permissions(?limit, offset, sortBy, sortOrder, fields, blogIds)]

### Retrieve a list of permissions for user. [GET]

+ Authentication is required
+ If you want to get others list, you should have Administer privilege.

+ Parameters
    + user_id (required, number or the word 'me') ... The user ID.
    + limit = `25` (optional, number) ... Maximum number of permissions to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `bog_id` (optional, string) ... The field name for sort. You can specify one of following values<ul><li>id</li><li>blog_id</li><li>author_id</li><li>created_by</li><li>created_on</li></ul>
    + sortOrder = `ascend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return permissions in descending order.</dd><dt>ascend</dt><dd>Return permissions in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Permissions resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + blogIds (optional, number) ... The comma-separated blog id list that to be included in the result.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Request

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>


+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
            {
              "roles" : [
                {
                  "name" : "Website Administrator",
                  "id" : 1
                }
              ],
              "permissions" : [
                "administer",
                "administer_blog",
                "administer_website",
                "comment",
                "create_blog",
                "create_post",
                "create_website",
                "edit_all_posts",
                "edit_assets",
                "edit_categories",
                "edit_config",
                "edit_notifications",
                "edit_tags",
                "edit_templates",
                "manage_feedback",
                "manage_member_blogs",
                "manage_pages",
                "manage_plugins",
                "manage_themes",
                "manage_users",
                "publish_post",
                "rebuild",
                "save_image_defaults",
                "send_notifications",
                "set_publish_paths",
                "upload",
                "view_blog_log",
                "view_log"
              ],
              "createdBy" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "user" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "blog" : {
                "id" : "2"
              },
              "id" : "3",
              "createdDate" : "2015-03-21T19:37:53+09:00"
            }
          ]
        }

## listPermissionsForSite [/sites/:site_id/permissions(?limit, offset, sortBy, sortOrder, fields)]

### New in v2.0: Retrieve a list of permissions for site. [GET]

+ Authentication is required
+ Permissions
  + Administer
  + Website Administrator for websites
  + Blog Administrator for blog

+ Parameters
    + site_id (required, number) ... The site ID.
    + limit = `25` (optional, number) ... Maximum number of permissions to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `bog_id` (optional, string) ... The field name for sort. You can specify one of following values<ul><li>id</li><li>blog_id</li><li>author_id</li><li>created_by</li><li>created_on</li></ul>
    + sortOrder = `ascend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return permissions in descending order.</dd><dt>ascend</dt><dd>Return permissions in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Permissions resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Request

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>


+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
            {
              "roles" : [
                {
                  "name" : "Website Administrator",
                  "id" : 1
                }
              ],
              "permissions" : [
                "administer",
                "administer_blog",
                "administer_website",
                "comment",
                "create_blog",
                "create_post",
                "create_website",
                "edit_all_posts",
                "edit_assets",
                "edit_categories",
                "edit_config",
                "edit_notifications",
                "edit_tags",
                "edit_templates",
                "manage_feedback",
                "manage_member_blogs",
                "manage_pages",
                "manage_plugins",
                "manage_themes",
                "manage_users",
                "publish_post",
                "rebuild",
                "save_image_defaults",
                "send_notifications",
                "set_publish_paths",
                "upload",
                "view_blog_log",
                "view_log"
              ],
              "createdBy" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "user" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "blog" : {
                "id" : "2"
              },
              "id" : "3",
              "createdDate" : "2015-03-21T19:37:53+09:00"
            }
          ]
        }

## listPermissionsForRole [/roles/:role_id/permissions(?limit, offset, sortBy, sortOrder, fields, blogIds)]

### New in v2.0: Retrieve a list of permissions by role. [GET]

+ Authentication is required
+ Permissions
  + Administer

+ Parameters
    + role_id (required, number) ... The role ID.
    + limit = `25` (optional, number) ... Maximum number of permissions to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `bog_id` (optional, string) ... The field name for sort. You can specify one of following values<ul><li>id</li><li>blog_id</li><li>author_id</li><li>created_by</li><li>created_on</li></ul>
    + sortOrder = `ascend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return permissions in descending order.</dd><dt>ascend</dt><dd>Return permissions in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Permissions resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + blogIds (optional, number) ... The comma-separated blog id list that to be included in the result.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Request

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>


+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
            {
              "roles" : [
                {
                  "name" : "Website Administrator",
                  "id" : 1
                }
              ],
              "permissions" : [
                "administer",
                "administer_blog",
                "administer_website",
                "comment",
                "create_blog",
                "create_post",
                "create_website",
                "edit_all_posts",
                "edit_assets",
                "edit_categories",
                "edit_config",
                "edit_notifications",
                "edit_tags",
                "edit_templates",
                "manage_feedback",
                "manage_member_blogs",
                "manage_pages",
                "manage_plugins",
                "manage_themes",
                "manage_users",
                "publish_post",
                "rebuild",
                "save_image_defaults",
                "send_notifications",
                "set_publish_paths",
                "upload",
                "view_blog_log",
                "view_log"
              ],
              "createdBy" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "user" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "blog" : {
                "id" : "2"
              },
              "id" : "3",
              "createdDate" : "2015-03-21T19:37:53+09:00"
            }
          ]
        }

## grantPermissionToSite [/sites/:site_id/permissions/grant]

### New in v2.0: Grant permissions to site. [POST]

+ Authentication is required
+ You should have grant_administer_role or grant_role_for_blog (Need grant_administer_role when granting role having administer_blog)

+ Parameters

  + site_id (required, number) ... The site ID.
  + role_id (required, number) ... The role ID.
  + user_id (required, number) ... The user ID.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            role_id=1&user_id=4

+ Response 200 (application/json)

        {"status":"success"}

## grantPermissionToUser [/users/:user_id/permissions/grant]

### New in v2.0: Grant permissions to user. [POST]

+ Authentication is required
+   You should have grant_administer_role or grant_role_for_blog (Need grant_administer_role when granting role having administer_blog)

+ Parameters

  + user_id (required, number) ... The user ID.
  + site_id (required, number) ... The site ID.
  + role_id (required, number) ... The role ID.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            role_id=1&site_id=1

+ Response 200 (application/json)

        {"status":"success"}

## revokePermissionFromSite [/sites/:site_id/permissions/revoke]

### New in v2.0: Revoke permissions from site. [POST]

+ Authentication is required
+ You should have revoke_role(Need revoke_administer_role when granting role having administer_blog )

+ Parameters

  + site_id (required, number) ... The site ID.
  + user_id (required, number) ... The user ID.
  + role_id (required, number) ... The role ID.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            role_id=1&user_id=1

+ Response 200 (application/json)

        {"status":"success"}

## revokePermissionFromUser [/users/:user_id/permissions/revoke]

### New in v2.0: Revoke permissions from user. [POST]

+ Authentication is required
+ You should have revoke_role(Need revoke_administer_role when granting role having administer_blog )

+ Parameters

  + user_id (required, number) ... The user ID.
  + site_id (required, number) ... The site ID.
  + role_id (required, number) ... The role ID.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded
            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            role_id=1&site_id=1

+ Response 200 (application/json)

        {"status":"success"}


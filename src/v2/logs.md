# Group Logs
This is the Logs resource.

Property Name | Type | Data Type | Database Column | Private | Read Only | Description | Version
------------ | ------------- | ------------ | ------------ | ------------- | ------------ | ------------ | ------------
blog | Object | Blog | |  | Y | The blog of this log. | v2
blog.id | value | Number | mt_log.log_blog_id |  | Y | The ID of the blog that contains this log. | v2
by | Object | User | |  | Y | Created user of this log. | v2
by.id | value | Number | mt_log.log_author_id |  | | The ID of this log creator. | v2
by.displayName | value | String | mt_author.author_nickname |  | Y | The display name of this log creator. | v2
by.userpicUrl | value | String | mt_author.author_userpic |  | | The URL of this log creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. | v2
category | value | String | mt_log.log_category |  |  | The category of this log. | v2
class | value | String | mt_log.log_class |  |  | The class of this log. | v2
date | value | iso 8601 datetime | mt_log.log_created_on |  | Y | Created date of this log. | v2
id | value | Number | mt_log.log_id |  | Y | The ID of this log. | v2
ip | value | String | mt_log.log_ip |  | Y | The remote IP address of this log creator. | v2
level | value | String | mt_log.log_level |  |  | The level of this log. <dl><dt>INFO</dt><dd>log_level is 1.</dd><dt>WARNING</dt><dd>log_level is 2.</dd><dt>ERROR</dt><dd>log_level is 4.</dd><dt>SECURITY</dt><dd>log_level is 8.</dd><dt>DEBUG</dt><dd>log_level is 16.</dd></dl> | New in v2
message | value | String | mt_log.log_message |  |  | The message of this log. | v2
metadata | value | String | mt_log.log_metadata |  |  | The metadata of this log. | v2
upatable | value | boolean | |  | Y | <dl><dt>true</dt><dd>The user who accessed can update this entry.</dd><dt>false</dt><dd>The user who accessed cannot update this entry.</dd></dl> | v2

                {
                  "ip": "127.0.0.1",
                  "date": "2015-06-29T09:29:35+09:00",
                  "updatable": true,
                  "blog": {
                    "id": "1"
                  },
                  "message": "Some log messages here.",
                  "by": {
                    "userpicUrl": null,
                    "id": "1",
                    "displayName": "Yuji Takayama"
                  },
                  "level": "INFO",
                  "metadata": "",
                  "category": "new",
                  "class": "template",
                  "id": "370"
                }

## listLogs [/sites/:site_id/logs{?site_id,limit,offset,sortBy,sortOrder,fields,searchFields,search,includeIds,excludeIds,level}]
### New in v2.0: Retrieve a list of logs in the specified site. [GET]

+ Authorization is required.

#####  Permissions
+ view_blog_log for website and blog.
+ view_log for the system.

+ Parameters
    + site_id (required, number) ... The site ID. If 0 specified, will load from global template in the system.
    + search (optional, string) ... Search query.
    + searchFields = `message,ip` (optional, string) ... The comma separated list of field names to search. Available value is 'message' and 'ip'.
    + limit = `50` (optional, number) ... Maximum number of logs to retrieve. An integer value between 1 and 2147483647.
    + offset = `0` (optional, number) ... 0-indexed offset. An integer value between 0 and 2147483647.
    + sortBy = `created_on` (optional, string) ... <ul><li>id</li><li>created_on</li><li>blog_id</li><li>author_id</li><li>level</li><li>class</li></ul>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>Return templates in descending order. For sorting by date, it means from newest to oldest.</dd><dt>ascend</dt><dd>Return templates in ascending order. For sorting by date, it means from oldest to newest.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Logs resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + includeIds (optional, string) ... The comma separated list of log IDs to include in result.
    + excludeIds (optional, string) ... The comma separated list of log IDSs to exclude from result.
    + level (optional, string) ... The comma separated list of level name to filter logs. Available value is foolows.<ul><li>security</li><li>error</li><li>warning</li><li>info</li><li>debug</li><li>security_or_error</li><li>security_or_error_or_warning</li><li>not_debug</li><li>debug_or_error</li></ul>

+ Request

    + Headers

            X-MT-Authorization: MTAuth accessToken=<accessToken>

+ Response 200 (application/json)

        {
          "totalResults": "224",
          "items": [
            {
              "ip": "127.0.0.1",
              "date": "2015-06-29T09:29:35+09:00",
              "updatable": true,
              "blog": {
                "id": "1"
              },
              "message": "Some log messages here.",
              "by": {
                "userpicUrl": null,
                "id": "1",
                "displayName": "Yuji Takayama"
              },
              "level": "INFO",
              "metadata": "",
              "category": "new",
              "class": "template",
              "id": "370"
            }
          ]
        }


+ Response 401 (application/json)

        {
          "error": {
            "message": "Unauthorized",
            "code": 401
          }
        }

+ Response 403 (application/json)

        {
          "error": {
            "message": "Do not have permission to retrieve the list of activity logs.",
            "code": "403"
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Site not found",
            "code": "404"
          }
        }

+ Response 500 (application/json)

        {
          "error": {
            "message": "Some error message is here",
            "code": "500"
          }
        }


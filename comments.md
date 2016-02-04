# Group Comments

This is the Comments resource.

Property Name | Type | Data Type | Database Column | Private | Read Only | Description | Version
------------ | ------------- | ------------ | ------------ | ------------- | ------------ | ------------ | ------------
author | Object | - | | | Y | The commenter of this comment. | v1
author.id | value | number | mt_comment.comment_commenter_id | Y | Y | The ID of this commenter. If commenter is not a registerd user, this field is empty. | v1
author.displayName | value | string | mt_comment.comment_author | | Y | The display name of this commenter. | v1
author.userpicUrl | value | number | | | Y | The URL of this commenter's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If a commenter is not a registered user or a commenter does not set own userpic, will be returned empty string. | v1
blog | Object | | | | Y | The blog of this comment. | v1
blog.id | value | number | mt_comment.comment_blog_id | | Y | The ID of the blog that contains this comment. | v1
body | value | string | mt_comment.comment_text | | | The contents of this comment. | v1
createdBy | Object | - | | | Y | The created user of this comment. In most cases, this is alias of `author`.| v2
createdBy.id | value | number | mt_comment.comment_created_by | Y | Y | The ID of created user. | v2
createdBy.displayName | value | string | | | Y | The display name of created user. | v2
createdBy.userpicUrl | value | string | | | Y | The URL of created user's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. | v2
createdDate | value | iso 8601 datetime | mt_comment.comment_created_on | | Y | The created time for this comment. | v2
customFields | ARRAY | - | | | | The list of customfields data for this category. | v1
customFields.basename | value | string | mt_field.field_basename | | | The basename of this customfield. | v1
customFields.value | value | string | | | | The value of this customfield. | v1
date | value | iso 8601 datetime | mt_comment.comment_created_on | | Y | The creation time for this comment. This property is marked as deprecated in v2.0.| v1
entry | Object | - | | | Y | The container entry of this comment. | v1
entry.id | value | number | mt_comment.comment_entry_id | | Y | The ID of the entry that contains this comment. | v1
id | value | number | mt_comment.comment_id | | Y | The ID of this comment. | v1
link | value | string | | | Y | The permalink for this comment. | v1
modifiedBy | Object | - | | | Y | The last modified user of this comment. | v2
modifiedBy.displayName | value | string | | | Y | The display name of last modified user. | v2
modifiedBy.id | value | number | mt_comment.comment_modified_by | Y | Y | The ID of last modified user. | v2
modifiedBy.userpicUrl | value | string | | | Y | The URL of last modified user's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. | v2
modifiedDate | value | iso 8601 datetime | mt_comment.comment_modified_on | | Y | The last modified time for this comment. | v2
parent | value | number | mt_comment.comment_parent_id | | | The ID of the parent of this comment. If this comment is not a reply, will be returned as null. | v1
status | value | string | | | | The publishing status of this comment. <dl><dt>Approved</dt><dd>This comment has been approved.<br />In the database, comment_visible = 1 and comment_junk_status = 1.</dd><dt>Pending</dt><dd>This comment has not been approved.<br />In the database, comment_visible = 0 and comment_junk_status = 1.</dd><dt>Spam</dt><dd>This comment has been marked as Spam.<br />In the database, comment_visible = 0 and comment_junk_status = -1.</dd></dl> | v1
updatable | value | boolean | | | Y | <dl><dt>true</dt><dd>The user who accessed can update this comment.</dd><dt>false</dt><dd>The user who accessed cannot update this comment.</dd> | v1

        {
          "link" : "http://example.com/blog/2014/11/hello-movable-type.html#comment-1",
          "parent" : null,
          "entry" : {
            "id" : "45"
          },
          "createdBy" : {
            "id" : 2
            "userpicUrl" : null,
            "displayName" : "Ichiro Aikawa"
          },
          "status" : "Approved",
          "date" : "2014-11-05T14:41:39+09:00",
          "updatable" : false,
          "blog" : {
            "id" : "22"
          },
          "author" : {
            "id" : 2
            "userpicUrl" : null,
            "displayName" : "Ichiro Aikawa"
          },
          "body" : "<p>Hi, congrats!</p>",
          "createdDate" : "2014-11-05T14:41:39+09:00",
          "id" : 1,
          "modifiedDate" : "2014-11-05T14:41:39+09:00",
          "customFields" : []
        }

## listComments [/sites/{site_id}/comments(?search, searchFields, limit, offset, sortBy, sortOrder, fields, includeIds, excludeIds, status, entryStatus)]

### Retrieve a list of comments in the specified site. [GET]

+ Authorization is required if want to include unpublished comments.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of comments.
404 | Not Found | Site not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + search (optional, string) ... Search query.
    + searchFields = `body` (optional, string) ... The comma separated field name list to search.
    + limit = `10` (optional, number) ... Maximum number of comments to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `id` (optional, string) ... The field name for sort.
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return comments in descending order.</dd><dt>ascend</dt><dd>Return comments in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Comments resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of comments to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of comments to exclude from result.
    + status (optional, string) ... Filter by status.<dl><dt>Approved</dt><dd>comment_visible is 1 and comment_junk_status is 1.</dd><dt>Pending</dt><dd>comment_visible is 0 and comment_junk_status is 1.</dd><dt>Spam</dt><dd>comment_junk_status is -1.</dd></dl>
    + entryStatus (optional, string) ... Filter by container entry's status. <dl><dt>Draft</dt><dd>entry_status is 1.</dd><dt>Publish</dt><dd>entry_status is 2.</dd><dt>Review</dt><dd>entry_status is 3.</dd><dt>Future</dt><dd>entry_status is 4.</dd><dt>Spam</dt><dd>entry_status is 5.</dd></dl>
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)


+ Response 200 (application/json)

        {
          "totalResults" : "1",
          "items" : [
            {
              "link" : "http://example.com/blog/2014/11/hello-movable-type.html#comment-1",
              "parent" : null,
              "entry" : {
                "id" : "45"
              },
              "createdBy" : {
                "id" : 2
                "userpicUrl" : null,
                "displayName" : "Ichiro Aikawa"
              },
              "status" : "Approved",
              "date" : "2014-11-05T14:41:39+09:00",
              "updatable" : false,
              "blog" : {
                "id" : "22"
              },
              "author" : {
                "id" : 2
                "userpicUrl" : null,
                "displayName" : "Ichiro Aikawa"
              },
              "body" : "<p>Hi, congrats!</p>",
              "createdDate" : "2014-11-05T14:41:39+09:00",
              "id" : 1,
              "modifiedDate" : "2014-11-05T14:41:39+09:00",
              "customFields" : []
            }
          ]
        }

## listCommentsForEntry [/sites/{site_id}/entries/{entry_id}/comments(?search, searchFields, limit, offset, sortBy, sortOrder, fields, includeIds, excludeIds, status)]

### Retrieve a list of comments for the specified entry. [GET]

+ Authorization is required if want to include unpublished comments.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of comments.
404 | Not Found | Site or Entry not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + entry_id (required, number) ... The entry ID.
    + search (optional, string) ... Search query.
    + searchFields = `body` (optional, string) ... The comma separated field name list to search.
    + limit = `10` (optional, number) ... Maximum number of comments to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `id` (optional, string) ... The field name for sort.
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return comments in descending order.</dd><dt>ascend</dt><dd>Return comments in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Comments resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of comments to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of comments to exclude from result.
    + status (optional, string) ... Filter by status.<dl><dt>Approved</dt><dd>comment_visible is 1 and comment_junk_status is 1.</dd><dt>Pending</dt><dd>comment_visible is 0 and comment_junk_status is 1.</dd><dt>Spam</dt><dd>comment_junk_status is -1.</dd></dl>
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : "1",
          "items" : [
            {
              "link" : "http://example.com/blog/2014/11/hello-movable-type.html#comment-1",
              "parent" : null,
              "entry" : {
                "id" : "45"
              },
              "createdBy" : {
                "id" : 2
                "userpicUrl" : null,
                "displayName" : "Ichiro Aikawa"
              },
              "status" : "Approved",
              "date" : "2014-11-05T14:41:39+09:00",
              "updatable" : false,
              "blog" : {
                "id" : "22"
              },
              "author" : {
                "id" : 2
                "userpicUrl" : null,
                "displayName" : "Ichiro Aikawa"
              },
              "body" : "<p>Hi, congrats!</p>",
              "createdDate" : "2014-11-05T14:41:39+09:00",
              "id" : 1,
              "modifiedDate" : "2014-11-05T14:41:39+09:00",
              "customFields" : []
            }
          ]
        }

## listCommentsForPage [/sites/{site_id}/pages/{page_id}/comments(?search, searchFields, limit, offset, sortBy, sortOrder, fields, includeIds, excludeIds, status)]

### Retrieve a list of comments for the specified page. [GET]

+ Authorization is required if want to include unpublished comments.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of comments.
404 | Not Found | Site or Page not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + page_id (required, number) ... The page ID.
    + search (optional, string) ... Search query.
    + searchFields = `body` (optional, string) ... The comma separated field name list to search.
    + limit = `10` (optional, number) ... Maximum number of comments to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `id` (optional, string) ... The field name for sort.
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return comments in descending order.</dd><dt>ascend</dt><dd>Return comments in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Comments resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of comments to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of comments to exclude from result.
    + status (optional, string) ... Filter by status.<dl><dt>Approved</dt><dd>comment_visible is 1 and comment_junk_status is 1.</dd><dt>Pending</dt><dd>comment_visible is 0 and comment_junk_status is 1.</dd><dt>Spam</dt><dd>comment_junk_status is -1.</dd></dl>
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : "1",
          "items" : [
            {
              "link" : "http://example.com/blog/2014/11/hello-movable-type.html#comment-1",
              "parent" : null,
              "entry" : {
                "id" : "45"
              },
              "createdBy" : {
                "id" : 2
                "userpicUrl" : null,
                "displayName" : "Ichiro Aikawa"
              },
              "status" : "Approved",
              "date" : "2014-11-05T14:41:39+09:00",
              "updatable" : false,
              "blog" : {
                "id" : "22"
              },
              "author" : {
                "id" : 2
                "userpicUrl" : null,
                "displayName" : "Ichiro Aikawa"
              },
              "body" : "<p>Hi, congrats!</p>",
              "createdDate" : "2014-11-05T14:41:39+09:00",
              "id" : 1,
              "modifiedDate" : "2014-11-05T14:41:39+09:00",
              "customFields" : []
            }
          ]
        }

## createComment [/sites/{site_id}/entries/{entry_id}/comments]

### Create a new comment for entry. [POST]

+ Authorization is required.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to create a new coment.
404 | Not Found | Site or Entry not found.

**Permission**

+ Comment

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
comment | Object | Yes | | Single Comments resource

+ Parameters
    + site_id (required, number) ... The site ID.
    + entry_id (required, number) ... The entry ID.

+ Request Assets resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            comment={"body" : "This is a test comment.\nHe he he"}

+ Response 200 (application/json)

        {
          "link" : "http://example.com/blog/2014/11/hello-movable-type.html#comment-1",
          "parent" : null,
          "entry" : {
            "id" : "45"
          },
          "createdBy" : {
            "id" : 2
            "userpicUrl" : null,
            "displayName" : "Ichiro Aikawa"
          },
          "status" : "Approved",
          "date" : "2014-11-05T14:41:39+09:00",
          "updatable" : false,
          "blog" : {
            "id" : "22"
          },
          "author" : {
            "id" : 2
            "userpicUrl" : null,
            "displayName" : "Ichiro Aikawa"
          },
          "body" : "<p>Hi, congrats!</p>",
          "createdDate" : "2014-11-05T14:41:39+09:00",
          "id" : 1,
          "modifiedDate" : "2014-11-05T14:41:39+09:00",
          "customFields" : []
        }

## postNewCommentForEntry [/sites/{site_id}/pages/{page_id}/comments]

### New In v2.0: Create a new comment for page. [POST]

+ Authorization is required.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to create a new coment.
404 | Not Found | Site or Page not found.

**Permission**

+ Comment

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
comment | Object | Yes | | Single Comments resource

+ Parameters
    + site_id (required, number) ... The site ID.
    + page_id (required, number) ... The page ID.

+ Request Assets resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            comment={"body" : "This is a test comment.\nHe he he"}

+ Response 200 (application/json)

        {
          "link" : "http://example.com/blog/2014/11/hello-movable-type.html#comment-1",
          "parent" : null,
          "entry" : {
            "id" : "45"
          },
          "createdBy" : {
            "id" : 2
            "userpicUrl" : null,
            "displayName" : "Ichiro Aikawa"
          },
          "status" : "Approved",
          "date" : "2014-11-05T14:41:39+09:00",
          "updatable" : false,
          "blog" : {
            "id" : "22"
          },
          "author" : {
            "id" : 2
            "userpicUrl" : null,
            "displayName" : "Ichiro Aikawa"
          },
          "body" : "<p>Hi, congrats!</p>",
          "createdDate" : "2014-11-05T14:41:39+09:00",
          "id" : 1,
          "modifiedDate" : "2014-11-05T14:41:39+09:00",
          "customFields" : []
        }

## createReplyComment [/sites/{site_id}/comments/{comment_id}/replies]

### Reply to specified comment. [POST]

+ Authorization is required.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to reply coment.
404 | Not Found | Site or Comment not found.

**Permission**

+ Comment

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
comment | Object | Yes | | Single Comments resource

+ Parameters
    + site_id (required, number) ... The site ID.
    + comment_id (required, number) ... The page ID.

+ Request Assets resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            comment={"body" : "This is a test comment.\nHe he he"}

+ Response 200 (application/json)

        {
          "link" : "http://example.com/blog/2014/11/hello-movable-type.html#comment-1",
          "parent" : null,
          "entry" : {
            "id" : "45"
          },
          "createdBy" : {
            "id" : 2
            "userpicUrl" : null,
            "displayName" : "Ichiro Aikawa"
          },
          "status" : "Approved",
          "date" : "2014-11-05T14:41:39+09:00",
          "updatable" : false,
          "blog" : {
            "id" : "22"
          },
          "author" : {
            "id" : 2
            "userpicUrl" : null,
            "displayName" : "Ichiro Aikawa"
          },
          "body" : "<p>Hi, congrats!</p>",
          "createdDate" : "2014-11-05T14:41:39+09:00",
          "id" : 1,
          "modifiedDate" : "2014-11-05T14:41:39+09:00",
          "customFields" : []
        }

## getComment [/sites/{site_id}/comments/{comment_id}(?fields)]

### Retrieve a single comment by its ID. [GET]

+ Authorization is required if the comment status is "unpublished". If the comment status is "published", then this method can be called without authorization.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the requested comment.
404 | Not Found | Site or Comment not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + comment_id (required, number) ... The comment ID.
    + fields (optional, string) ... The field list to retrieve as part of the Comments resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.

+ Response 200 (application/json)

        {
          "link" : "http://example.com/blog/2014/11/hello-movable-type.html#comment-1",
          "parent" : null,
          "entry" : {
            "id" : "45"
          },
          "createdBy" : {
            "id" : 2
            "userpicUrl" : null,
            "displayName" : "Ichiro Aikawa"
          },
          "status" : "Approved",
          "date" : "2014-11-05T14:41:39+09:00",
          "updatable" : false,
          "blog" : {
            "id" : "22"
          },
          "author" : {
            "id" : 2
            "userpicUrl" : null,
            "displayName" : "Ichiro Aikawa"
          },
          "body" : "<p>Hi, congrats!</p>",
          "createdDate" : "2014-11-05T14:41:39+09:00",
          "id" : 1,
          "modifiedDate" : "2014-11-05T14:41:39+09:00",
          "customFields" : []
        }

## updateComment [/sites/{site_id}/comments/{comment_id}]

### Update an exsiting comment. [PUT]

+ Authorization is required.
+ This method accepts PUT and POST with __method=PUT.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to update the requested comment.
404 | Not Found | Site or Comment not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + comment_id (required, number) ... The comment ID.

+ Response 200 (application/json)

        {
          "link" : "http://example.com/blog/2014/11/hello-movable-type.html#comment-1",
          "parent" : null,
          "entry" : {
            "id" : "45"
          },
          "createdBy" : {
            "id" : 2
            "userpicUrl" : null,
            "displayName" : "Ichiro Aikawa"
          },
          "status" : "Approved",
          "date" : "2014-11-05T14:41:39+09:00",
          "updatable" : false,
          "blog" : {
            "id" : "22"
          },
          "author" : {
            "id" : 2
            "userpicUrl" : null,
            "displayName" : "Ichiro Aikawa"
          },
          "body" : "<p>Hi, congrats!</p>",
          "createdDate" : "2014-11-05T14:41:39+09:00",
          "id" : 1,
          "modifiedDate" : "2014-11-05T14:41:39+09:00",
          "customFields" : []
        }


## updateComment [/sites/{site_id}/comments/{comment_id}]
### Delete an existing comment. [DELETE]

+ Authorization is required.
+ This method accepts PUT and POST with __method=DELETE.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to delete the requested comment.
404 | Not Found | Site or Comment not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + comment_id (required, number) ... The comment ID.

+ Response 200 (application/json)

        {
          "link" : "http://example.com/blog/2014/11/hello-movable-type.html#comment-1",
          "parent" : null,
          "entry" : {
            "id" : "45"
          },
          "createdBy" : {
            "id" : 2
            "userpicUrl" : null,
            "displayName" : "Ichiro Aikawa"
          },
          "status" : "Approved",
          "date" : "2014-11-05T14:41:39+09:00",
          "updatable" : false,
          "blog" : {
            "id" : "22"
          },
          "author" : {
            "id" : 2
            "userpicUrl" : null,
            "displayName" : "Ichiro Aikawa"
          },
          "body" : "<p>Hi, congrats!</p>",
          "createdDate" : "2014-11-05T14:41:39+09:00",
          "id" : 1,
          "modifiedDate" : "2014-11-05T14:41:39+09:00",
          "customFields" : []
        }


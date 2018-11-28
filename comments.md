# Data Structures
## Comment
+ author
    +id (number) - The ID of this commenter. If commenter is not a registerd user, this field is empty.
    + displayName (string) - The display name of this commenter.
    + userpicUrl (string) - The URL of this commenter's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If a commenter is not a registered user or a commenter does not set own userpic, will be returned empty string.
+ blog
    + id (number) - The ID of the blog that contains this comment.
+ body (string) - The contents of this comment.
+ createdBy
    + id (number) - The ID of created user.
    + displayName (string) - The display name of created user.
    + userpicUrl (string) - The URL of created user's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ createdDate (string) - The created time for this comment. (format is iso 8601 datetime)
+ customFields (array)
    + basename (string) - The basename of this customfield.
    + value (string) - The value of this customfield.
+ date (string) - The creation time for this comment. This property is marked as deprecated in v2.0. (format is iso 8601 datetime)
+ entry
    + id (number) - The ID of the entry that contains this comment.
+ id (number) - The ID of this comment.
+ link (string) - The permalink for this comment.
+ modifiedBy
    + displayName (string) - The display name of last modified user.
    + id (number) - The ID of last modified user.
    + userpicUrl (string) - The URL of last modified user's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ modifiedDate (string) - The last modified time for this comment. (format is iso 8601 datetime)
+ parent (number) - The ID of the parent of this comment. If this comment is not a reply, will be returned as null.
+ status (string) - The publishing status of this comment. Approved: This comment has been approved. In the database, comment_visible = 1 and comment_junk_status = 1. Pending: This comment has not been approved. In the database, comment_visible = 0 and comment_junk_status = 1. Spam: This comment has been marked as Spam. In the database, comment_visible = 0 and comment_junk_status = -1.
+ updatable (boolean) - true: The user who accessed can update this comment. false: The user who accessed cannot update this comment.

# Group Comments

## Comments Collection [/sites/{site_id}/comments{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,entryStatus,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.

### Comments Collection [GET]
Authorization is required if you want to retrieve unpublished comments.

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `body` (optional, string) - The comma separated field name list to search.
    + limit: 10 (optional, number) - Maximum number of comments to retrieve.
    + offset: 0 (optional, number) - 0-indexed offset.
    + sortBy: id (optional, string) - The field name for sort.
    + sortOrder: `descend` (optional, string) - 
        * descend (default): Return comments in descending order.
        * ascend: Return comments in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Comments resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of comments to include to result.
    + excludeIds (optional, string) - The comma separated ID list of comments to exclude from result.
    + status (optional, string) - Filter by status.
        * Approved: comment_visible is 1 and comment_junk_status is 1.
        * Pending: comment_visible is 0 and comment_junk_status is 1.
        * Spam: comment_junk_status is -1.
    + entryStatus (optional, string) - Filter by container entry's status.
        + Draft: entry_status is 1.
        * Publish: entry_status is 2.
        * Review: entry_status is 3.
        * Future: entry_status is 4.
        * Spam: entry_status is 5.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)
    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Comment], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of comments.

    + body

+ Response 404 (application/json)

    Site not found.

    + body


## Comments Collection by entry [/sites/{site_id}/entries/{entry_id}/comments{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.
    + entry_id (required, number) - The entry ID.

### Create a new comment for entry [POST]
**Authentication required.**

Create a new commet for an entry. This endpoint need following permissions. (Perhapse, MT user almost have comment permission.)

+ Comment

Post form data is following

+ comment (Comment) - Single Comments resource.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            comment={"body" : "This is a test comment.\nHe he he"}

+ Response 200 (application/json)
    + Attributes (Comment)

+ Response 403 (application/json)

    Do not have permission to create a new comment.

    + body

+ Response 404 (application/json)

    Site or entry not found.

    + body

### Comments Collection by entry [GET]
Authorization is required if you want to retrieve unpublished comments.

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `body` (optional, string) - The comma separated field name list to search.
    + limit: `10` (optional, number) - Maximum number of comments to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `id` (optional, string) - The field name for sort.
    + sortOrder: `descend` (optional, string) - 
        + descend (default): Return comments in descending order.
        + ascend: Return comments in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Comments resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of comments to include to result.
    + excludeIds (optional, string) - The comma separated ID list of comments to exclude from result.
    + status (optional, string) - Filter by status.
        * Approved: comment_visible is 1 and comment_junk_status is 1.
        * Pending: comment_visible is 0 and comment_junk_status is 1.
        * Spam: comment_junk_status is -1.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)
    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Comment], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of comments.

    + body

+ Response 404 (application/json)

    Site or entry not found.

    + body


## Comments Collection by page [/sites/{site_id}/pages/{page_id}/comments{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.
    + page_id (required, number) - The page ID.

### Create a new comment for page [POST]
**Authentication required.**

Create a new commet for an page. This endpoint need following permissions. (Perhapse, MT user almost have comment permission.)

+ Comment

Post form data is following

+ comment (Comment) - Single Comments resource.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            comment={"body" : "This is a test comment.\nHe he he"}

+ Response 200 (application/json)
    + Attributes (Comment)

+ Response 403 (application/json)

    Do not have permission to create a new comment.

    + body

+ Response 404 (application/json)

    Site or page not found.

    + body

### Comments Collection by page [GET]
Authentication is required if want to include unpublished comments.

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `body` (optional, string) - The comma separated field name list to search.
    + limit: `10` (optional, number) - Maximum number of comments to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `id` (optional, string) - The field name for sort.
    + sortOrder: `descend` (optional, string) - 
        + descend (default): Return comments in descending order.
        + ascend: Return comments in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Comments resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of comments to include to result.
    + excludeIds (optional, string) - The comma separated ID list of comments to exclude from result.
    + status (optional, string) - Filter by status.
        * Approved: comment_visible is 1 and comment_junk_status is 1.
        * Pending: comment_visible is 0 and comment_junk_status is 1.
        * Spam: comment_junk_status is -1.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)
    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Comment], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of comments.

    + body

+ Response 404 (application/json)

    Site or entry not found.

    + body


## Comment [/sites/{site_id}/comments/{comment_id}{?fields}]

+ Parameters
    + site_id (required, number) - The site ID.
    + comment_id (required, number) - The comment ID.

### Fetch single comment [GET]
Authorization is required if the comment status is "unpublished".

+ Parameters
    + fields (optional, string) - The field list to retrieve as part of the Comments resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.

+ Response 200 (application/json)
    + Attributes (Comment)

+ Response 403 (application/json)

    Do not have permission to retrieve comment.

    + body

+ Response 404 (application/json)

    Site or comment not found.

    + body

### Update single comment [PUT]
**Authentication required.**
Update comment. This endpoint need following permissions. (Perhapse, MT user almost have comment permission.)

+ Comment

This method accepts PUT and POST with __method=PUT.

Post form data is following

+ comment (Comment) - Single Comments resource.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            comment={"body" : "This is a test comment.\nHe he he"}

+ Response 200 (application/json)
    + Attributes (Comment)

+ Response 403 (application/json)

    Do not have permission to update comment.

    + body

+ Response 404 (application/json)

    Site or comment not found.

    + body

### Delete single comment [DELETE]
**Authentication required.**

Delete comment. This endpoint need following permissions. (Perhapse, MT user almost have comment permission.)

+ Comment

This method accepts PUT and POST with __method=DELETE.

+ Response 200 (application/json)
    + Attributes (Comment)

+ Response 403 (application/json)

    Do not have permission to update comment.

    + body

+ Response 404 (application/json)

    Site or comment not found.

    + body

### Make a reply [POST /sites/{site_id}/comments/{comment_id}/replies]
**Authentication required/**

Make a reply comment. This endpoint need following permissions. (Perhapse, MT user almost have comment permission.)

+ Comment

Post form data is following

+ comment (Comment) - Single Comments resource.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            comment={"body" : "This is a test comment.\nHe he he"}

+ Response 200 (application/json)
    + Attributes (Comment)

+ Response 403 (application/json)

    Do not have permission to reply comment.

    + body

+ Response 404 (application/json)

    Site or comment not found.

    + body

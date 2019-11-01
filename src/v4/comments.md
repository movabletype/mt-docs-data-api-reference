# Group Comments

## Comments Collection [/sites/{site_id}/comments{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,entryStatus,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.

### Comments Collection [GET]
Authorization is required if you want to retrieve unpublished comments.

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `body` (optional, string) - The comma separated field name list to search.
    + limit: 50 (optional, number) - Maximum number of comments to retrieve. An integer value between 1 and 2147483647.
    + offset: 0 (optional, number) - 0-indexed offset. An integer value between 0 and 2147483647.
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
    + limit: `50` (optional, number) - Maximum number of comments to retrieve. An integer value between 1 and 2147483647.
    + offset: `0` (optional, number) - 0-indexed offset. An integer value between 0 and 2147483647.
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
    + limit: `50` (optional, number) - Maximum number of comments to retrieve. An integer value between 1 and 2147483647.
    + offset: `0` (optional, number) - 0-indexed offset. An integer value between 0 and 2147483647.
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

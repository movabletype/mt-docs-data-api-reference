# Group Pages

## Page Collection [/sites/{site_id}/pages/{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,maxComments,maxTrackbacks,no_text_filter,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id: The site ID.

### Create a new page [POST]
**Authentication required.**
Create a new page. This endpoint need following permissions.

* Manage Pages

Post form data is follows

* page (Page, required) - Single Pages resource.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

+ Response 200 (application/json)

    + Attributes (Page)

+ Response 403 (application/json)

    Do not have permission to create a new page.

    + Body

+ Response 404 (application/json)

    Site not found

    + Body

### Page Collection [GET]
Retrieve a list of pages. Authentication required if you want to retrieve unpublished pages. Requires permission is follows.

* Manage Pages

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `title,body,more,keywords,excerpt,basename` (optional, string) - The comma separated field name list to search.
    + limit: `50` (optional, number) - Maximum number of pages to retrieve. An integer value between 1 and 2147483647.
    + offset: `0` (optional, number) - 0-indexed offset. An integer value between 0 and 2147483647.
    + sortBy: `modified_on` (optional, string) - The field name for sort. You can specify one of following values.
        * authored_on
        * title
        * created_on
        * modified_on
    + sortOrder: `descend` (optional, string) -
        * descend (default): Return pages in descending order.
        * ascend: Return pages in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Pages resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of pages to include to result.
    + excludeIds (optional, string) - The comma separated ID list of pages to exclude from result.
    + status (optional, string) - Filter by container page's status.
        + Draft: status is 1.
        + Publish: status is 2.
        + Review: status is 3.
        + Future: status is 4.
        + Spam: status is 5.
    + maxComments (optional, number) - This is an optional parameter. Maximum number of pages to retrieve as part of the Pages resource. If this parameter is not supplied, no pages will be returned.
    + maxTrackbacks (optional, number) - This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Pages resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter: `0` (optional, number) - If you want to fetch the raw text, set to '1'. New in v2
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Page], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve pages.

    + body

+ Response 404 (application/json)

    Site not found.

    + body


## Pages Collection by folder [/sites/{site_id}/folders/{folder_id}/pages{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,maxComments,maxTrackbacks,no_text_filter,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (number, required) - The site ID.
    + folder_id (number, required) - The folder ID.

### Pages Collection by folder [GET]
Retrieve a list of pages by folder.

Authentication required if want to include unpublished pages. Requires permission is follows.

* Manage Pages

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `title,body,more,keywords,excerpt,basename` (optional, string) - The comma separated field name list to search.
    + limit: `50` (optional, number) - Maximum number of pages to retrieve. An integer value between 1 and 2147483647.
    + offset: `0` (optional, number) - 0-indexed offset. An integer value between 0 and 2147483647.
    + sortBy: `modified_on` (optional, string) - The field name for sort. You can specify one of following values.
        * authored_on
        * title
        * created_on
        * modified_on
    + sortOrder: `descend` (optional, string) -
        * descend (default): Return pages in descending order.
        * ascend: Return pages in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Pages resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of pages to include to result.
    + excludeIds (optional, string) - The comma separated ID list of pages to exclude from result.
    + status (optional, string) - Filter by container page's status.
        + Draft: status is 1.
        + Publish: status is 2.
        + Review: status is 3.
        + Future: status is 4.
        + Spam: status is 5.
    + maxComments (optional, number) - This is an optional parameter. Maximum number of pages to retrieve as part of the Pages resource. If this parameter is not supplied, no pages will be returned.
    + maxTrackbacks (optional, number) - This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Pages resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter: `0` (optional, number) - If you want to fetch the raw text, set to '1'. New in v2
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Page], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve pages.

    + body

+ Response 404 (application/json)

    Site not found.

    + body


## Pages Collection by asset [/sites/{site_id}/assets/{asset_id}/pages{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,maxComments,maxTrackbacks,no_text_filter,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (number, required) - The site ID.
    + asset_id (number, required) - The asset ID.

### Pages Collection by asset [GET]
Retrieve a list of pages that related with asset.

Authentication required if want to include unpublished pages. Requires permission is follows.

* Manage Pages

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `title,body,more,keywords,excerpt,basename` (optional, string) - The comma separated field name list to search.
    + limit: `50` (optional, number) - Maximum number of pages to retrieve. An integer value between 1 and 2147483647.
    + offset: `0` (optional, number) - 0-indexed offset. An integer value between 0 and 2147483647.
    + sortBy: `modified_on` (optional, string) - The field name for sort. You can specify one of following values.
        * authored_on
        * title
        * created_on
        * modified_on
    + sortOrder: `descend` (optional, string) -
        * descend (default): Return pages in descending order.
        * ascend: Return pages in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Pages resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of pages to include to result.
    + excludeIds (optional, string) - The comma separated ID list of pages to exclude from result.
    + status (optional, string) - Filter by container page's status.
        + Draft: status is 1.
        + Publish: status is 2.
        + Review: status is 3.
        + Future: status is 4.
        + Spam: status is 5.
    + maxComments (optional, number) - This is an optional parameter. Maximum number of pages to retrieve as part of the Pages resource. If this parameter is not supplied, no pages will be returned.
    + maxTrackbacks (optional, number) - This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Pages resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter: `0` (optional, number) - If you want to fetch the raw text, set to '1'. New in v2
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Page], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve pages.

    + body

+ Response 404 (application/json)

    Site not found.

    + body


## Pages Collection by tag [/sites/{site_id}/tags/{tag_id}/pages{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,maxComments,maxTrackbacks,no_text_filter,dateField,dateFrom,dateTo}]

+ Paramegers
    + site_id (number, required) - The site ID.
    + tag_id (number, required) - The tag ID.

### Pages Collection by tag [GET]
Retrieve a list of pages that related with tag.

Authentication required if want to include unpublished pages. Requires permission is follows.

* Manage Pages

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `title,body,more,keywords,excerpt,basename` (optional, string) - The comma separated field name list to search.
    + limit: `50` (optional, number) - Maximum number of pages to retrieve. An integer value between 1 and 2147483647.
    + offset: `0` (optional, number) - 0-indexed offset. An integer value between 0 and 2147483647.
    + sortBy: `modified_on` (optional, string) - The field name for sort. You can specify one of following values.
        * authored_on
        * title
        * created_on
        * modified_on
    + sortOrder: `descend` (optional, string) -
        * descend (default): Return pages in descending order.
        * ascend: Return pages in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Pages resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of pages to include to result.
    + excludeIds (optional, string) - The comma separated ID list of pages to exclude from result.
    + status (optional, string) - Filter by container page's status.
        + Draft: status is 1.
        + Publish: status is 2.
        + Review: status is 3.
        + Future: status is 4.
        + Spam: status is 5.
    + maxComments (optional, number) - This is an optional parameter. Maximum number of pages to retrieve as part of the Pages resource. If this parameter is not supplied, no pages will be returned.
    + maxTrackbacks (optional, number) - This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Pages resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter: `0` (optional, number) - If you want to fetch the raw text, set to '1'. New in v2
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Page], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve pages.

    + body

+ Response 404 (application/json)

    Site not found.

    + body

## Page [/sites/{site_id}/pages/{page_id}{?fields}]

+ Parameters
    + site_id: 1 (number, required) - The site ID.
    + page_id: 1 (number, required) - The page ID.

### Fetch single page [GET]
Fetch single page.

Authentication required if the page status is "unpublished". Requires permission is follows.

* Manage Pages

+ Parameters
    + fields (optional, string) - The field list to retrieve as part of the Pages resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.

+ Response 200 (application/json)

    + Attributes (Page)


### Update single page [PUT]
**Authentication required.**

Update single page. This endpoint is authentication required. Required permission is follows.

* Manage Pages

#### Update in v2.0

* You can attach/detach folder and assets by one request.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            page={"excerpt" : "We are excited to announce that Six Apar-"}

+ Response 200 (application/json)

    + Attributes (Page)

### Delete single page [DELETE]
**Authentication required.**

Delete single page. This endpoint is authentication required. Required permission is follows.

+ Manage Pages

+ Response 200 (application/json)

    + Attributes (Page)


## Preview page by data [/sites/{site_id}/pages/preview{?raw}]

+ Parameters
    + site_id (required, number) - The site ID.

### Make a preview by data [POST]
**Authentication required.**

Make a preview by specified data. This endpoint requires authentication. Required permission is follows.

+ manage_pages

+ **This endpoint is available in Movable Type 6.1.2 or later.**

Post form data is follows
* page (Page, required) - Page data to make a preview.

+ Parameters
    + raw (optional, number) -  If specify “1”, will be returned preview contents.

+ Request Entries resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            page={ "title" : "My First Post", "body" : "This is my first post!" }

+ Response 200 (application/json)

    + Attributes
        + status (string) - The resukt status of this call.
        + preview (string) - The url of preview file.

+ Response 403 (application/json)

    Do not have permission to get page preview.

    + Body

+ Response 404 (application/json)

    Site not found

    + Body

+ Response 500 (application/json)

    Application error occurs.

    + Body

## Preview page by id [/sites/{site_id}/pages/{page_id}/preview{?raw}]
+ Parameters
    + site_id (required, number) - The site ID.
    + page_id (required, number) - The page ID.

### Make a preview for exising data [POST]
**Authentication required.**

Make a preview by specified data. This endpoint needs following permissions.

+ manage_post

+ **This endpoint is available in Movable Type 6.1.2 or later.**

Post form data is follows
* page (Page, required) - Should be provide empty json. This parameter will be removed in the future.

+ Parameters
    + raw (optional, number) -  If specify “1”, will be returned preview contents.

+ Request Templates resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            page={}

+ Response 200 (application/json)

    + Attributes
        + status (string) - The resukt status of this call.
        + preview (string) - The url of preview file.

+ Response 403 (application/json)

    Do not have permission to get page preview.

    + Body

+ Response 404 (application/json)

    Site not found

    + Body

+ Response 500 (application/json)

    Application error occurs.

    + Body

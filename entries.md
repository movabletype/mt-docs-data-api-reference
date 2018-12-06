# Group Entries

## Entry Collection [/sites/{site_id}/entries{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,maxComments,maxTrackbacks,no_text_filter,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id: 1 (number, required) - The ID of the site.

### Create a new entry [POST]
**Authentication required.**

Create a new entry. This endpoint need following permission.

* create_post

Post form data is following
* entry (Entry) - Single Entries resource
* publish (number) - If specify 0 this entry and related templates are not rebuild at save.

#### Update in v2.0
* You can attach categories and assets in the one request.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            entry={"excerpt" : "We are excited to announce that Six Apar-","status" : "Publish","allowComments" : true,"body" : "¥u003cp¥u003e¥u003cspan¥u003eWe are excited to announce that Six Apart has acquired Topics, a dynamic online publishing product. This offering will provide Six Apart customers with an easy and cost-effective way to adapt existing content to evolving digital platforms.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eThis new product will save Six Apart customers a significant amount of time and money by allowing users to upgrade their websites and applications without migrating from their current content management systems. Clients who need to scale large amounts of data or even revamp a website on an entirely new platform can now achieve these changes with minimal effort.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eSix Apart customers will benefit not only from saved time and money, but also from ease of use. Topics does not have a user interface, so there is no new software to learn. Instead, it exists as a middle layer between the data library and the published page - automatically gathering, organizing and redistributing data.¥u003c/span¥u003e¥u003c/p¥u003e","keywords" : "","allowTrackbacks" : false,"basename" : "six_apart_acquires_topics_server_to_simplify_site_upgrades","title" : "Six Apart Acquires Topics Server to Simplify Site Upgrades","more" : "","customFields" : [{"basename" : "place","value" : "New York City"},{"basename" : "agenda","value" : "Movable Type¥nTopics"}]}

+ Response 200 (application/json)

    + Attributes (Entry)

+ Response 403 (application/json)

    Do not have permission to create a new entry.

    + Body

+ Response 404 (application/json)

    Site not found

    + Body

### Entries Collection [GET]
Retrieve list of entries in the specified site.

Authentication required if you want to retrieve unpublished entries. Required pemission is follows.

* edit_entry

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `title,body,more,keywords,excerpt,basename` (optional, string) - The comma separated field name list to search.
    + limit: 10 (optional, number) - Maximum number of entries to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `authored_on` (optional, string) - The field name for sort. You can specify one of following values.
        * authored_on
        * title
        * created_on
        * modified_on
    + sortOrder: `descend` (optional, string) - 
        * descend (default): Return entries in descending order.
        * ascend: Return entries in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Entries resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of entries to include to result.
    + excludeIds (optional, string) - The comma separated ID list of entries to exclude from result.
    + status (optional, string) - Filter by container entry's status.
        * Draft: entry_status is 1.
        * Publish: entry_status is 2.
        * Review: entry_status is 3.
        * Future: entry_status is 4.
        * Spam: entry_status is 5.
    + maxComments (optional, number) - This is an optional parameter. Maximum number of comments to retrieve as part of the Entries resource. If this parameter is not supplied, no comments will be returned.
    + maxTrackbacks (optional, number) - This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Entries resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter: 0 (optional, number) - If you want to fetch the raw text, set to '1'. New in v2
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Entry], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve entries.

    + body

+ Response 404 (application/json)

    Site not found.

    + body


## Entry Collection by category [/sites/{site_id}/categories/{category_id}/entries{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,maxComments,maxTrackbacks,no_text_filter,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.
    + category_id: 1 (number, required) - The category ID.

### Entry Collection by category [GET]
Retrieve a list of entries that related with specified category.

Authentication required. if want to retrieve unpublished entries. Required pemission is follows.

* edit_entry

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `title,body,more,keywords,excerpt,basename` (optional, string) - The comma separated field name list to search.
    + limit: 10 (optional, number) - Maximum number of entries to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `authored_on` (optional, string) - The field name for sort. You can specify one of following values.
        * authored_on
        * title
        * created_on
        * modified_on
    + sortOrder: `descend` (optional, string) - 
        * descend (default): Return entries in descending order.
        * ascend: Return entries in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Entries resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of entries to include to result.
    + excludeIds (optional, string) - The comma separated ID list of entries to exclude from result.
    + status (optional, string) - Filter by container entry's status.
        * Draft: entry_status is 1.
        * Publish: entry_status is 2.
        * Review: entry_status is 3.
        * Future: entry_status is 4.
        * Spam: entry_status is 5.
    + maxComments (optional, number) - This is an optional parameter. Maximum number of comments to retrieve as part of the Entries resource. If this parameter is not supplied, no comments will be returned.
    + maxTrackbacks (optional, number) - This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Entries resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter: 0 (optional, number) - If you want to fetch the raw text, set to '1'. New in v2
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Entry], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve entries.

    + body

+ Response 404 (application/json)

    Site or category not found.

    + body


## Entries Collection by asset [/sites/{site_id}/assets/{asset_id}/entries{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,maxComments,maxTrackbacks,no_text_filter,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.
    + asset_id: 1 (number, required) - The asset ID.

### Entry Collection by asset [GET]
Retrieve a list of entries that related with specified asset.

Authentication required. if want to retrieve unpublished entries. Required pemission is follows.

* edit_entry

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `title,body,more,keywords,excerpt,basename` (optional, string) - The comma separated field name list to search.
    + limit: 10 (optional, number) - Maximum number of entries to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `authored_on` (optional, string) - The field name for sort. You can specify one of following values.
        * authored_on
        * title
        * created_on
        * modified_on
    + sortOrder: `descend` (optional, string) - 
        * descend (default): Return entries in descending order.
        * ascend: Return entries in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Entries resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of entries to include to result.
    + excludeIds (optional, string) - The comma separated ID list of entries to exclude from result.
    + status (optional, string) - Filter by container entry's status.
        * Draft: entry_status is 1.
        * Publish: entry_status is 2.
        * Review: entry_status is 3.
        * Future: entry_status is 4.
        * Spam: entry_status is 5.
    + maxComments (optional, number) - This is an optional parameter. Maximum number of comments to retrieve as part of the Entries resource. If this parameter is not supplied, no comments will be returned.
    + maxTrackbacks (optional, number) - This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Entries resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter: 0 (optional, number) - If you want to fetch the raw text, set to '1'. New in v2
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Entry], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve entries.

    + body

+ Response 404 (application/json)

    Site or asset not found.

    + body


## Entries Collection by tag [/sites/{site_id}/tags/{tag_id}/entries{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,maxComments,maxTrackbacks,no_text_filter,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.
    + tag_id: 1 (number, required) - The tag ID.

### Entry Collection by tag [GET]
Retrieve a list of entries that related with specified tag.

Authentication required. if want to retrieve unpublished entries. Required pemission is follows.

* edit_entry

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `title,body,more,keywords,excerpt,basename` (optional, string) - The comma separated field name list to search.
    + limit: 10 (optional, number) - Maximum number of entries to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `authored_on` (optional, string) - The field name for sort. You can specify one of following values.
        * authored_on
        * title
        * created_on
        * modified_on
    + sortOrder: `descend` (optional, string) - 
        * descend (default): Return entries in descending order.
        * ascend: Return entries in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Entries resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of entries to include to result.
    + excludeIds (optional, string) - The comma separated ID list of entries to exclude from result.
    + status (optional, string) - Filter by container entry's status.
        * Draft: entry_status is 1.
        * Publish: entry_status is 2.
        * Review: entry_status is 3.
        * Future: entry_status is 4.
        * Spam: entry_status is 5.
    + maxComments (optional, number) - This is an optional parameter. Maximum number of comments to retrieve as part of the Entries resource. If this parameter is not supplied, no comments will be returned.
    + maxTrackbacks (optional, number) - This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Entries resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter: 0 (optional, number) - If you want to fetch the raw text, set to '1'. New in v2
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Entry], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve entries.

    + body

+ Response 404 (application/json)

    Site or tag not found.

    + body


## Entry [/sites/{site_id}/entries/{entry_id}{?fields}]

+ Parameters
    + site_id (required, number) - The site ID.
    + entry_id (required, number) - The entry ID.

### Fetch single entry [GET]
Fetch single entry.

Authentication required if you want fetch unpublished entry. Required permission is follows.

* edit_entry

+ Parameters
    + fields (optional, string) - The field list to retrieve as part of the Entries resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.

+ Response 200 (application/json)

    + Attributes (Entry)

+ Response 403 (application/json)

    Do not have permission to fetch an entry.

    + body

+ Response 404 (application/json)

    Site or entry not found.

    + body

### Update single entry. [PUT]
**Authentication required.**

Update a single entry. This endpoint need folllowing permissions.

+ edit_entry

This method accepts PUT and POST with __method=PUT.

Post form data is following:
* entry (Entry, required) -Single Entries resource.
* publish (number) - If specify 0 this entry and related templates are not rebuild at save.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            entry={"excerpt" : "We are very excited to announce that Six Apar-"}

+ Response 200 (application/json)

    + Attributes (Entry)

+ Response 403 (application/json)

    Do not have permission to update an entry.

    + body

+ Response 404 (application/json)

    Site or entry not found.

    + body


### Delete single entry. [DELETE]
**Authentication required.**

Delete a single entry. This endpoint need folllowing permissions.

+ edit_entry

This method accepts PUT and POST with __method=DELETE.

+ Response 200 (application/json)

    + Attributes (Entry)

+ Response 403 (application/json)

    Do not have permission to delete an entry.

    + body

+ Response 404 (application/json)

    Site or entry not found.

    + body


## Preview entry by data [/sites/{site_id}/entries/preview{?raw}]

+ Parameters
    + site_id (required, number) - The site ID.

### Make a preview by data [POST]
**Authentication required.**

Make a preview by specified data. This endpoint needs following permissions.

* create_post

**This endpoint is available in Movable Type 6.1.2 or later.**

Post form data is follows
* entry (Entry, required) - Entry data to make a preview.

+ Parameters
    + raw (optional, number) - If specify “1”, will be returned preview contents.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            entry={ "title" : "My First Post", "body" : "This is my first post!" }


+ Response 200 (application/json)

    + Attributes
        + status (string) - The resukt status of this call.
        + preview (string) - The url of preview file.

+ Response 403 (application/json)

    Do not have permission to get entry preview.

    + Body

+ Response 404 (application/json)

    Site not found

    + Body

+ Response 500 (application/json)

    Application error occurs.

    + Body

## Preview entry by id [/sites/{site_id}/entries/{entry_id}/preview{?raw}]

### Make a preview by id [POST]
**Authentication required.**

Make a preview by specified data. This endpoint needs following permissions.

*+* create_post

**This endpoint is available in Movable Type 6.1.2 or later.**

Post form data is follows
* entry (Entry, required) - Should be provide empty json. This parameter will be removed in the future.

+ Parameters
    + site_id (required, number) - The site ID.
    + entry_id (required, number) - The entry ID.
    + raw (optional, number) - If specify “1”, will be returned preview contents.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            entry={}


+ Response 200 (application/json)

    + Attributes
        + status (string) - The resukt status of this call.
        + preview (string) - The url of preview file.

+ Response 403 (application/json)

    Do not have permission to get entry preview.

    + Body

+ Response 404 (application/json)

    Site not found

    + Body

+ Response 500 (application/json)

    Application error occurs.

    + Body

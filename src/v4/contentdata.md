# Group Content Data

## Content Data Collection [/sites/{site_id}/contentTypes/{content_type_id}/data{?limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id: 1 (number, required) - The site ID.
    + content_type_id: 1 (number, required) - The content type ID.

### Content Data Collection [GET]
Retrieve list of content data of specified content type in the specified site.

Authentication required if you want to retrieve unpublished content data. Required pemission is follows.

* Manage Content Data (site, sistem, each content type)
* Publish Content Data (each content type)
* Edit All Content Data (each content type)

+ Parameters
    + limit: 50 (optional, number) - Maximum number of content data to retrieve. An integer value between 1 and 2147483647.
    + offset: `0` (optional, number) - 0-indexed offset. An integer value between 0 and 2147483647.
    + sortBy: `id` (optional, string) - The field name for sort. You can specify one of following values.
        * id
        * uniqueID
        * authored_on
        * created_on
        * modified_on
    + sortOrder: `descend` (optional, string) - 
        * descend (default): Return content data in descending order.
        * ascend: Return content data in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the content data resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of entries to include to result.
    + excludeIds (optional, string) - The comma separated ID list of entries to exclude from result.

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[ContentData], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve content data.

    + body

+ Response 404 (application/json)

    Site or content type not found.

    + body

### Create Content Data [POST]
**Authentication Required**
Create a new content data. This endpoint requires following permissions.

* Manage Content Data (site, sistem, each content type)
* Create Content Data (each content type)

Post form data is following
* content_data (ContentData) - Single ContentData resource

:::warning
Known issues (these will be solved in future release)

* If content type contains non required Content Type field, request will failed when post data does not contains its data.
* If content type contains non required Date and Time field, request will failed when post data does not contains its data.
* Date and Time field must be specified by YYYYMMDDHHmmSS format.
:::

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            content_data={"label":"From API", "data":[{"id":"58", "data":"20161221092305"}]},

+ Response 200 (application/json)

    + Attributes (ContentData)

+ Response 403 (application/json)

    Do not have permission to create a new content data.

    + body

+ Response 404 (application/json)

    Site or content type not found.

    + body

## Content Data [/sites/{site_id}/contentTypes/{content_type_id}/data/{content_data_id}{fields}]

+ Parameters
    + site_id: 1 (number, required) - The site ID.
    + content_type_id: 1 (number, required) - The content type ID.
    + content_data_id: 1 (number, required) - The content data ID.

### Fetch single Content Data [GET]
Fetch single content data.

Authentication required if you want fetch unpublished content data. Required permission is follows.

* Manage Content Data (site, sistem, each content type)
* Edit All Content Data (each content type)
* Publish Content Data (each content type)

+ Parameters
    + fields (optional, string) - The field list to retrieve as part of the Content Data resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.

+ Response 200 (application/json)

    + Attributes (ContentData)

+ Response 403 (application/json)

    Do not have permission to retrieve a content data.

    + body

+ Response 404 (application/json)

    Site, content type or content data not found.

    + body

### Update Content Data [PUT]
**Authentication Required**
Update a single content data. This endpoint requires folllowing permissions.

* Manage Content Data (site, sistem, each content type)
* Edit All Content Data (each content type)
* Publish Content Data (each content type)

Post form data is following:
* content_data (ContentData, required) -Single ContentData resource.

:::note
This method accepts PUT and POST with __method=PUT.
:::

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            content_data={"label" : "New Label"}

+ Response 200 (application/json)

    + Attributes (ContentData)

+ Response 403 (application/json)

    Do not have permission to update a content data.

    + body

+ Response 404 (application/json)

    Site, content type or content data not found.

    + body


### Delete single content data. [DELETE]
**Authentication required.**

Delete a single content data. This endpoint requires folllowing permissions.

* Manage Content Data (site, sistem, each content type)
* Edit All Content Data (each content type)
* Publish Content Data (each content type)

:::note
This method accepts PUT and POST with __method=DELETE.
::::

+ Response 200 (application/json)

    + Attributes (ContentData)

+ Response 403 (application/json)

    Do not have permission to delete an content data.

    + body

+ Response 404 (application/json)

    Site, content type or content data not found.

    + body


## Preview content data by data [/sites/{site_id}/content_types/{content_type_id}/data/preview{?raw}]

+ Parameters
    + site_id: 1 (number, required) - The site ID.
    + content_type_id: 1 (number, required) - The content type ID.

### Make a preview by data [POST]
**Authentication required.**

Make a preview by specified data. This endpoint requires following permissions.

* Manage Content Data (site, sistem, each content type)
* Create Content Data (each content type)

Post form data is following
* content_data (ContentData) - Single ContentData resource

:::warning
Known issues (these will be solved in future release)

* If content type contains non required Content Type field, request will failed when post data does not contains its data.
* If content type contains non required Date and Time field, request will failed when post data does not contains its data.
* Date and Time field must be specified by YYYYMMDDHHmmSS format.
:::

+ Parameters
    + raw (optional, number) - If specify “1”, will be returned preview contents.

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            content_data={"label":"From API", "data":[{"id":"58", "data":"20161221092305"}]},

+ Response 200 (application/json)

    + Attributes
        + status (string) - The result status of this call.
        + preview (string) - The url of preview file or preview content if raw parameter is set as `1`.

+ Response 403 (application/json)

    Do not have permission to get content data preview.

    + Body

+ Response 404 (application/json)

    Site or content type  not found

    + Body

+ Response 500 (application/json)

    Application error occurs.

    + Body

## Preview content data by id [/sites/{site_id}/content_types/{content_type_id}/data/{content_data_id}/preview{?raw}]

+ Parameters
    + site_id: 1 (number, required) - The site ID.
    + content_type_id: 1 (number, required) - The content type ID.
    + content_data_id: 1 (number, required) - The content data ID.

### Make a preview by id [POST]
**Authentication required.**

Make a preview by ID. This endpoint requires following permissions.

* Manage Content Data (site, sistem, each content type)
* Create Content Data (each content type)

Post form data is follows
* entry (Entry, required) - Should be provide empty json. This parameter will be removed in the future.

:::warning
Known issues (these will be solved in future release)

* If content type contains non required Content Type field, request will failed when post data does not contains its data.
* If content type contains non required Date and Time field, request will failed when post data does not contains its data.
* Date and Time field must be specified by YYYYMMDDHHmmSS format.
:::

+ Parameters
    + raw (optional, number) - If specify “1”, will be returned preview contents.

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            content_data={},

+ Response 200 (application/json)

    + Attributes
        + status (string) - The result status of this call.
        + preview (string) - The url of preview file or preview content if raw parameter is set as `1`.

+ Response 403 (application/json)

    Do not have permission to get content data preview.

    + Body

+ Response 404 (application/json)

    Site or content type  not found

    + Body

+ Response 500 (application/json)

    Application error occurs.

    + Body

## Publish Content Data [/publish/contentData{blogId,blogIds,ids,startTime}]

### Publish COntent Data [GET]
**Authentication Requuired**
Publish content data. This endpoint requires following permissions.

* Manage Content Data (site, sistem, each content type)
* Edit All Content Data (each content type)

+ Parameters
    + blogId (number, required) - Target site ID. Either blogID or blogIds must be specified.
    + blogIds (string, required) - The comma separated site ID list. Either blogID or blogIds must be specified.
    + ids (string, optional) - The comma separated content data ID list. You should specifiy this parameter to next call if this endpoint returns 'Rebuilding' status and you want to continue to publish.
    + startTime (string, optional) - The string of build start time. You should specifiy this parameter to next call if this endpoint returns 'Rebuilding' status and you want to continue to publish.

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

+ Response 200 (application/json)

    + Attributes
        + status (string) - The result status of this call. `Rebuilding`: It means that there is still content that needs to be rebuilt. / `Complete`: Publishing process has been finished.
        + startTime (string) - The string of build start time. You should specifiy this parameter to next call if this endpoint returns 'Rebuilding' status and you want to continue to publish.
        + restIds (string) - The comma separated content data ID list. You should specifiy this parameter to next call if this endpoint returns 'Rebuilding' status and you want to continue to publish.

+ Response 403 (application/json)

    Do not have permission to publish content data.

    + Body

+ Response 500 (application/json)

    Application error occurs.

    + Body


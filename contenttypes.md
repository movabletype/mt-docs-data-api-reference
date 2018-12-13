# Group Content Types

## Content Type Collection [/sites/{site_id}/contentTypes{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id: 1 (number, required) - The site ID.

### Content Type Collection [GET]
**Authentication required**

Retrieve a list of Content Types. This endpoint requires following permission.

* Manage Content Types

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `dataLabel,name,description` (optional, string) - The comma separated field name list to search.
        + Default: `name,description`
    + limit: 10 (optional, number) - Maximum number of entries to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `id` (optional, string) - The field name for sort. You can specify one of following values.
        * name
        * dataLabel
        * uniqueID
        * created_on
        * modified_on
    + sortOrder: `descend` (optional, string) - 
        * descend (default): Return entries in descending order.
        * ascend: Return entries in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Entries resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of entries to include to result.
    + excludeIds (optional, string) - The comma separated ID list of entries to exclude from result.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[ContentType], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve content types.

    + body

+ Response 404 (application/json)

    Site not found.

    + body

### Create Content Type [POST]
**Authentication required**

Create a new Content Type. This endpoint requires following permission.

* Manage Content Types

Post form data is follows.

+ content_type (required, ContentType) - Single Content Type resource

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            content_type={"description": "This is new content type.","name": "New Content Type","userDisplayOption": true}

+ Response 200 (application/json)

    + Attributes (ContentType)

+ Response 403 (application/json)

    Do not have permission to create a new content type.

    + body

+ Response 404 (application/json)

    Site not found.

    + body


## Content Type [/sites/{site_id}/contentTypes/{content_type_id}{?fields}]

+ parameters
    + site_id: 1 (number,required) - The site ID
    + content_type_id: 1 (number, required) - The content type ID

### Fetch single Content Type [GET]
**Authentication required**

Fetch single content type. This endpoint requires following permission.

* Manage Content Types

+ Response 200 (application/json)

    + Attributes (ContentType)

+ Response 403 (application/json)

    Do not have permission to retrieve a content type.

    + body

+ Response 404 (application/json)

    Site or content type not found.

    + body

### Update Content Type [PUT]
**Authentication required**

Update content type. This endpoint requires following permission.

* Manage Content Types

:::note
Cannot update/insert/delete content fields by this endpoint. If you want to manage content fields, please use ContentFields API.
:::

:::note
This method accepts PUT or POST with parameter '__method=PUT'.
:::

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            content_type={"description": "New description"}

+ Response 200 (application/json)

    + Attributes (ContentType)

+ Response 403 (application/json)

    Do not have permission to update a content type.

    + body

+ Response 404 (application/json)

    Site or content type not found.

    + body

### Delete Content Type [DELETE]
**Authentication required**

Delete content type. This endpoint requires following permission.

* Manage Content Types

:::note
This method accepts DELETE or POST with parameter '__method=DELETE'.
:::

+ Response 200 (application/json)

    + Attributes (ContentType)

+ Response 403 (application/json)

    Do not have permission to delete a content type.

    + body

+ Response 404 (application/json)

    Site or content type not found.

    + body


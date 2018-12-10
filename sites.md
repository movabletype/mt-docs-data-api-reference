# Group Sites

## Site Collection [/sites{?limit,offset,sortBy,sortOrder,fields,searchFields,search,includeIds,excludeIdsdateFirld,dateFrom,dateTo}]

### Site Collection [GET]
Retrieve a list of sites.

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `name` (optional, string) - Only 'name' is available.
    + limit: `25` (optional, number) - Maximum number of sites to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `name` (optional, string) - Only 'name' is available
    + sortOrder: `descend` (optional, string) - 
        * descend (default): Return sites in descending order.
        * ascend: Return sites in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Sites resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of sites to include to result.
    + excludeIds (optional, string) - The comma separated ID list of sites to exclude from result.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Site], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of sites.

    + body

### Create a new top level site [POST]
**Authentication required.**

Create a new website. This endpoint need following permission.

+ Create Site

Post form data is following.
+ website (Site, required) - Single Site resource

:::note
This method accepts PUT or POST with __method=PUT.
:::

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken={Token}

    + Body

            website={"url" : "http://example.com/", "name" : "New Website", "sitePath":"/path/to/document_root/"}


+ Response 200 (application/json)

    + Attributes (Site)

+ Response 403 (application/json)

    Do not have permission to create a site.

    + body


## Site Collection by user [/users/{user_id}/sites{?limit,offset,sortBy,sortOrder,fields,searchFields,search,includeIds,excludeIds,dateField,dateFrom,dateTo}]

+ Parameters
    + user_id (required, number or 'me') - The user ID or the word 'me'.

### Site Collection by user [GET]
Retrieve a list of sites by user. The list includes only the site for which the user has any permissions.

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `name` (optional, string) - Only 'name' is available.
    + limit: `25` (optional, number) - Maximum number of sites to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `name` (optional, string) - Only 'name' is available
    + sortOrder: `descend` (optional, string) - 
        * descend (default): Return sites in descending order.
        * ascend: Return sites in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Sites resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of sites to include to result.
    + excludeIds (optional, string) - The comma separated ID list of sites to exclude from result.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)
    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Site], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of sites.

    + body

+ Response 404 (application/json)

    User not found.

    + body


## Site Collection by parent site [/sites/{site_id}/children{?limit,offset,sortBy,sortOrder,fields,searchFields,search,includeIds,excludeIds,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id:1 (number, required) - The site ID of parent.

### Site Collection by parent site [GET]
Retrieve a list of sites by parent site.

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `name` (optional, string) - Only 'name' is available.
    + limit: `25` (optional, number) - Maximum number of sites to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `name` (optional, string) - Only 'name' is available
    + sortOrder: `descend` (optional, string) - 
        * descend (default): Return sites in descending order.
        * ascend: Return sites in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Sites resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of sites to include to result.
    + excludeIds (optional, string) - The comma separated ID list of sites to exclude from result.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)
    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Site], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of sites.

    + body

+ Response 404 (application/json)

    User not found.

    + body


## Site [/sites/{site_id}{?fields}]

+ Parameter
    + site_id: 1 (number, required) - The Site ID.

### Fetch single site [GET]
Fetch a single site by its ID.

+ Parameters
    + fields (optional, string) - The field list to retrieve as part of the Sites resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.

+ Response 200 (application/json)

    + Attributes (Site)

+ Response 403 (application/json)

    Do not have permission to fetch site.

    + body

+ Response 404 (application/json)

    Site not found.

    + body

### Create a new child site [POST]
**Authentication required.**
Create a new blog under the top level site. This endpoint need following permissions.

+ Create Site

Post form data is follows.
+ blog (Site, required) - Single Site resource

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken={Token}

    + Body

            blog={"name":"New Blog", "url":"blog", "sitePath":"blog"}

+ Response 200 (application/json)

    + Attributes (Site)

+ Response 403 (application/json)

    Do not have permission to create child site.

    + body

+ Response 404 (application/json)

    Site not found.

    + body

### Update site [PUT]
**Authentication required.**
Update site. This endpoint needs following permission.

* Change Settings

Post form data is follows.
+ blog (Site, required) - Single Site resource

:::note
This method accepts PUT or POST with __method=PUT.
:::

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            website={"name" : "Our new Website"} or blog={"name" : "Our new Website"}

+ Response 200 (application/json)

    + Attributes (Site)

+ Response 403 (application/json)

    Do not have permission to update site.

    + body

+ Response 404 (application/json)

    Site not found.

    + body

## Delete site [DELETE]
**Authentication required.**
Delete site. This endpoint needs following permissions.

* Site Administrator

:::note
This method accepts DELETE or POST with __method=DELETE.
:::

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken={Token}

+ Response 200 (application/json)

    + Attributes (Site)

+ Response 403 (application/json)

    Do not have permission to delete site.

    + body

+ Response 404 (application/json)

    Site not found.

    + body

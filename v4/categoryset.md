#Group Category Set

## Category Set Collection [/sites/{site_id}/categorySets{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id: 1 (number,required) - The site ID.

### Category Set Collection [GET]
Retrieve list of category set in the specified site. Authentication required if you want retrieve private field in categorySet resource. Required permissions is follows.

* Manage Category Set

:::warning
* If you use search parameter, you must specify search parameter with searchFields parameter. (This will be fixed in a future release.)
:::

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `name` (optional, string) - The comma separated field name list to search. In this version, only `name` is available.
    + limit: 10 (optional, number) - Maximum number of category set to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `name` (optional, string) - The field name for sort. You can specify one of following values.
        * id
        * name
        * created_on
        * modified_on
        * content_type_count
    + sortOrder: `descend` (optional, string) - 
        * descend (default): Return category set in descending order.
        * ascend: Return category set in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the CategorySet resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of category set to include to result.
    + excludeIds (optional, string) - The comma separated ID list of category set to exclude from result.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering.
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format.
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format.

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[CategorySet], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve category set.

    + body

+ Response 404 (application/json)

    Site not found.

    + body


### Create a new category set [POST]
**Authentication Required**

Create a new category set. This endpoint requires following permissions.

* Manage Category Set

Post form data is following
* category_set (CategorySet) - Single CategorySet resource

+ Request (Content-Type: application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            category_set={"name":"New Category Set"}

+ Response 200 (application/json)

    + Attributes (CategorySet)

+ Response 403 (application/json)

    Do not have permission to create a new category set.

    + Body

+ Response 404 (application/json)

    Site not found

    + Body

## CategorySet [/sites/{site_id}/categorySets/{category_set_id}{?fields}]

+ Parameters
    + site_id: 1 (number,required) - The site ID.
    + category_set_id: 1 (number,required) - The category set ID.

### Fetch single category set [GET]
Fetch a single category set. Authentication required if you want retrieve private field in categorySet resource. Required permissions is follows.

* Manage Category Set

+ Parameters
    + fields (optional, string) - The field list to retrieve as part of the CategorySet resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.

+ Response 200 (application/json)

    + Attributes (CategorySet)

+ Response 403 (application/json)

    Do not have permission to retrieve a category set.

    + Body

+ Response 404 (application/json)

    Site or category set not found

    + Body

### Update category set [PUT]
**Authentication required**
Update single category set. This endpoint requires following permissions.

* Manage Category Set

:::note
Cannot update/insert/delete categories by this endpoint. If you want to manage categories in category set, please use Categories API.
:::

:::note
This method accepts PUT or POST with parameter '__method=PUT'.
:::

+ Request (Content-Type: application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            category_set={"name":"Update Category Set"}

+ Response 200 (application/json)

    + Attributes (CategorySet)

+ Response 403 (application/json)

    Do not have permission to update a category set.

    + Body

+ Response 404 (application/json)

    Site or category set not found

    + Body

### Delete category set [DELETE]
**Authentication required**
Delete a single category set. This endpoint requires following permissions.

* Manage Category Set

:::note
This method accepts DELETE or POST with parameter '__method=DELETE'.
:::

+ Response 200 (application/json)

    + Attributes (CategorySet)

+ Response 403 (application/json)

    Do not have permission to delete a category set.

    + Body

+ Response 404 (application/json)

    Site or category set not found

    + Body

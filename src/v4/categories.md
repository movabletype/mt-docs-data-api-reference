# Group Categories

## Categories Collection [/sites/{site_id}/categories{?search,searchFields,limit,offset,sortBy,sortOrder,fields,top,includeIds,excludeIds,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.

### Create a new category [POST]
**Authentication required.**

Create a new category. This endpoint needs following permissions.

+ Manage Categories

Post form data is following:

+ category (Category) - Category resource

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            category={"basename" : "news","parent" : "0","label","description" : null}

+ Response 200 (application/json)

    + Attributes (Category)

+ Response 403 (application/json)

    Do not have permission to create a new category.

    + body

+ Response 404 (application/json)

    Site not found.

    + body

### Retrieve a list of categories [GET]
Retrieve list of categories in the specified site.

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `label,basename` (optional, string) - The comma separated list of field names to search.
    + limit: 10 (optional, number) - Maximum number of categories to retrieve.
    + offset: 0 (optional, number) - 0-indexed offset.
    + sortBy: `user_custom` (optional, string) -
        * user_custom: Sort order you specified on the Manage Categories screen.
        * created_by: Sort by the ID of user who created each category.
        * id: Sort by the ID of each category.
        * basename: Sort by the basename of each category.
        * label: Sort by the label of each category.
    + sortOrder = `descend` (optional, string) - 
        * descend (default): Return categories in descending order.
        * *ascend: Return categories in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Categories resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + top: 0 (optional, number) - If set to 1, retrieves only top level categories. New in v2
    + includeIds (optional, string) - The comma separated list of category IDs to include in result.
    + excludeIds (optional, string) - The comma separated list of category IDs to exclude from result.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)
    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Category], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of categories.

    + body

+ Response 404 (application/json)

    Site not found.

    + body


## Categories Collection by entry [/sites/{site_id}/entries/{entry_id}/categories{?search,searchFields,limit,offset,sortBy,sortOrder,fields,type,includeIds,excludeIds,top,dateField,dateFrom,dateTo}]

### Categories Collection by entry [GET]
Retrieve list of categories in the specified site. If you want to retrieve the non-published an entry's categories, needs authentication and user must have following permission.

+ edit_entry

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `label,basename` (optional, string) - The comma separated list of field names to search.
    + limit: 10 (optional, number) - Maximum number of categories to retrieve.
    + offset: 0 (optional, number) - 0-indexed offset.
    + sortBy: `user_custom` (optional, string) -
        * user_custom: Sort order you specified on the Manage Categories screen.
        * created_by: Sort by the ID of user who created each category.
        * id: Sort by the ID of each category.
        * basename: Sort by the basename of each category.
        * label: Sort by the label of each category.
    + sortOrder = `descend` (optional, string) - 
        * descend (default): Return categories in descending order.
        * *ascend: Return categories in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Categories resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + top: 0 (optional, number) - If set to 1, retrieves only top level categories. New in v2
    + includeIds (optional, string) - The comma separated list of category IDs to include in result.
    + excludeIds (optional, string) - The comma separated list of category IDs to exclude from result.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + type (optional, string) - 
        * primary: Retrieve primary category only.
        * secondary: Retrieve secondary categories only.

+ Response 200 (application/json)
    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Category], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of categories.

    + body

+ Response 404 (application/json)

    Site or entry not found.

    + body


## Categories Collection for parent categories [/sites/{site_id}/categories/{category_id}/parents{?maxDepth,includeCurrent,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.
    + category_id (required, number) - The category ID.

### Categories Collection for parent categories [GET]
Retrieve list of parent categories of the specified category.

+ Parameters
    + maxDepth: 0 (optional, number) - The depth of retrieving parent categories.
    + includeCurrent: 0 (optional, number) - 
        * 1: The list does not include current category.
        * The list includes current category.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)
    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Category], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of categories.

    + body

+ Response 404 (application/json)

    Site or category not found.

    + body


## Categories Collection for siblings categories [/sites/{site_id}/categories/{category_id}/siblings{?search,searchFields,limit,offset,sortBy,sortOrder,fields,top,includeIds,excludeIds,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.
    + category_id (required, number) - The category ID.

### Categories Collection for siblings categories [GET]
Retrieve list of siblings categories of the specified category.

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `label,basename` (optional, string) - The comma separated list of field names to search.
    + limit: 10 (optional, number) - Maximum number of categories to retrieve.
    + offset: 0 (optional, number) - 0-indexed offset.
    + sortBy: `user_custom` (optional, string) - 
        + user_custom: Sort order you specified on the Manage Categories screen.
        * created_by: Sort by the ID of user who created each category.
        * id: Sort by the ID of each category.
        * basename: Sort by the basename of each category.
        * label: Sort by the label of each category.
    + sortOrder: `descend` (optional, string) - 
        * descend (default): Return categories in descending order.
        * ascend: Return categories in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Categories resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + top: 0 (optional, number) - If set to 1, retrieves only top level categories. New in v2
    + includeIds (optional, string) - The comma separated list of category IDs to include in result.
    + excludeIds (optional, string) - The comma separated list of category IDs to exclude from result.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)
    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Category], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of categories.

    + body

+ Response 404 (application/json)

    Site or category not found.

    + body


## Categoris Collection for child categories [/sites/{site_id}/categories/{category_id}/children{?maxDepth,includeCurrent,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.
    + category_id (required, number) - The category ID.

### Categoris Collection for child categories [GET]
Retrieve list of child categories of the specified category.

+ Parameters
    + maxDepth: 0 (optional, number) - The depth of retrieving parent categories.
    + includeCurrent: 0 (optional, number) - 
        * 1: The list does not include current category.
        * The list includes current category.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)
    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Category], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of categories.

    + body

+ Response 404 (application/json)

    Site or category not found.

    + body


## Category [/sites/{site_id}/categories/{category_id}{?fields}]

+ Parameters
    + site_id (required, number) - The site ID.
    + category_id (required, number) - The category ID.

### Fetch single category [GET]
Retrieve a single category by its ID.

+ Parameters
    + fields (optional, string) - The field list to retrieve as part of the Categories resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.

+ Response 200 (application/json)

    + Attributes (Category)

+ Response 403 (application/json)

    Do not have permission to retrieve a category.

    + body

+ Response 404 (application/json)

    Site or category not found.

    + body

### Update single category [PUT]
**Authentication required.**

Update an existing category. This endpoint need folllowing permissions.

+ Manage Categories

This method accepts PUT and POST with __method=PUT.

Post form data is following:

+ category (Category) - Category resource

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            category={"basename" : "news","parent" : "0","archiveLink" : "http://example.com/news/index.html","updatable" : false,"label" : "News","class" : "category","id" : "1","blog" : {"id" : "1"},"description" : null,"customFields" : [{"basename" : "bannerImage","value" : "http://example.com/images/banner.jpg"}]}

+ Response 200 (application/json)

    + Attributes (Category)

+ Response 403 (application/json)

    Do not have permission to update a category.

    + body

+ Response 404 (application/json)

    Site or category not found.

    + body

### Delete single category [DELETE]
**Authentication required.**

Update an existing category. This endpoint need folllowing permissions.

+ Manage Categories

This method accepts DELETE and POST with __method=DELETE.

+ Response 200 (application/json)

    + Attributes (Category)

+ Response 403 (application/json)

    Do not have permission to update a category.

    + body

+ Response 404 (application/json)

    Site or category not found.

    + body


## Save hierarchical categories order [/sites/{site_id}/categories/permutate]

+ Parameters
    + site_id (required, number) - The site ID.

### Save hierarchical categories order [POST]
**Authentication required.**

Save hierarchical categories order. This endpoint need folllowing permissions.

+ Manage Categories

This method returns rearranged Categories collection.

Post form data is following:

+ categories (array[Category]) - Array of Categories resource that were rearranged.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            categories=[{"basename" : "news","parent" : "0","archiveLink" : "http://example.com/news/index.html","updatable" : false,"label" : "News","class" : "category","id" : "1","blog" : {"id" : "1"},"description" : null,"customFields" : [{"basename" : "bannerImage","value" : "http://example.com/images/banner.jpg"},{"basename" : "pressreleases","parent" : "0","archiveLink" : "http://example.com/pressreleases/index.html","updatable" : false,"label" : "Press releases","class" : "category","id" : "2","blog" : {"id" : "1"},"description" : null,}]

+ Response 200 (application/json)

    + Attributes (array[Category], fixed-type)


## Categoris Collection for category set [/sites/{site_id}/categorySets/{category_set_id}/categories{?maxDepth,includeCurrent,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.
    + category_set_id (required, number) - The category set ID.

### Categoris Collection for category set [GET]
Retrieve list of categories of the specified category set.

+ Parameters
    + maxDepth: 0 (optional, number) - The depth of retrieving parent categories.
    + includeCurrent: 0 (optional, number) - 
        * 1: The list does not include current category.
        * The list includes current category.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)
    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Category], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of categories.

    + body

+ Response 404 (application/json)

    Site or category set not found.

    + body

### Create a new category for category set [POST]
**Authentication required.**

Create a new category in category set. This endpoint needs following permissions.

+ Manage Category Set

Post form data is following:

+ category (Category) - Category resource

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            category={"basename" : "news","parent" : "0","label" : "News",description" : null}

+ Response 200 (application/json)

    + Attributes (Category)

+ Response 403 (application/json)

    Do not have permission to create a new category.

    + body

+ Response 404 (application/json)

    Site or category set not found.

    + body


## Categoris Collection of parent categories for category set [/sites/{site_id}/categorySets/{category_set_id}/categories/{category_id}/parents{?maxDepth,includeCurrent,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.
    + category_set_id (required, number) - The category set ID.
    + category_id (required, number) - The category ID.

### Categoris Collection of parent categories for category set [GET]
Retrieve list of parent categories of the specified category set.

+ Parameters
    + maxDepth: 0 (optional, number) - The depth of retrieving parent categories.
    + includeCurrent: 0 (optional, number) - 
        * 1: The list does not include current category.
        * The list includes current category.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)
    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Category], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of categories.

    + body

+ Response 404 (application/json)

    Site, category set or category not found.

    + body


## Categoris Collection of child categories for category set [/sites/{site_id}/categorySets/{category_set_id}/categories/{category_id}/siblings{?maxDepth,includeCurrent,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.
    + category_set_id (required, number) - The category set ID.
    + category_id (required, number) - The category ID.

### Categoris Collection of child categories for category set [GET]
Retrieve list of child categories of the specified category set.

+ Parameters
    + maxDepth: 0 (optional, number) - The depth of retrieving parent categories.
    + includeCurrent: 0 (optional, number) - 
        * 1: The list does not include current category.
        * The list includes current category.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)
    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Category], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of categories.

    + body

+ Response 404 (application/json)

    Site, category set or category not found.

    + body


## Category for Category Set [/sites/{site_id}/categorySets/{category_set_id}/categories/{category_id}{?fields}]

+ Parameters
    + site_id (required, number) - The site ID.
    + category_set_id (required, number) - The category set ID.
    + category_id (required, number) - The category ID.

### Fetch single category in category set [GET]
Retrieve a single category by its ID.

+ Parameters
    + fields (optional, string) - The field list to retrieve as part of the Categories resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.

+ Response 200 (application/json)

    + Attributes (Category)

+ Response 403 (application/json)

    Do not have permission to retrieve a category.

    + body

+ Response 404 (application/json)

    Site or category not found.

    + body

### Update single category in category set [PUT]
**Authentication required.**

Update an existing category. This endpoint need folllowing permissions.

+ Manage Categoy Set

Post form data is following:

+ category (Category) - Category resource

:::note
This method accepts PUT and POST with __method=PUT.
:::

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            category={"basename" : "news","parent" : "0","archiveLink" : "http://example.com/news/index.html","updatable" : false,"label" : "News","class" : "category","id" : "1","blog" : {"id" : "1"},"description" : null,"customFields" : [{"basename" : "bannerImage","value" : "http://example.com/images/banner.jpg"}]}

+ Response 200 (application/json)

    + Attributes (Category)

+ Response 403 (application/json)

    Do not have permission to update a category.

    + body

+ Response 404 (application/json)

    Site or category not found.

    + body

### Delete single category in category set [DELETE]
**Authentication required.**

Update an existing category. This endpoint need folllowing permissions.

+ Manage Category Set

:::note
This method accepts DELETE and POST with __method=DELETE.
:::

+ Response 200 (application/json)

    + Attributes (Category)

+ Response 403 (application/json)

    Do not have permission to update a category.

    + body

+ Response 404 (application/json)

    Site or category not found.

    + body


## Save hierarchical categories order in category set [/sites/{site_id}/categorySets/{category_set_id}/categories/permutate]

+ Parameters
    + site_id (required, number) - The site ID.
    + category_set_id (required, number) - The category set ID.

### Save hierarchical categories order in category set [POST]
**Authentication required.**

Save hierarchical categories order. This endpoint need folllowing permissions.

+ Manage Category Set

This method returns rearranged Categories collection.

Post form data is following:

+ categories (array[Category]) - Array of Categories resource that were rearranged.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            categories=[{"basename" : "news","parent" : "0","archiveLink" : "http://example.com/news/index.html","updatable" : false,"label" : "News","class" : "category","id" : "1","blog" : {"id" : "1"},"description" : null,"customFields" : [{"basename" : "bannerImage","value" : "http://example.com/images/banner.jpg"},{"basename" : "pressreleases","parent" : "0","archiveLink" : "http://example.com/pressreleases/index.html","updatable" : false,"label" : "Press releases","class" : "category","id" : "2","blog" : {"id" : "1"},"description" : null,}]

+ Response 200 (application/json)

    + Attributes (array[Category], fixed-type)

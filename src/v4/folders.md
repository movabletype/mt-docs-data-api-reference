# Group Folders

## Folder Collection [/sites/{site_id}/folders/{folder_id}]

+ Parameters
    + site_id (required, number) - The site ID.

### Create a new folder [POST]
**Authentication required.**

Create a new folder. This endpoint needs following permissions.

+ Manage Pages

Post form data is following:

+ folder (Folder) - Folder resource

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            folder={"basename" : "news","parent" : "0","label" : "News","description" : null}

+ Response 200 (application/json)

    + Attributes (Folder)

+ Response 403 (application/json)

    Do not have permission to create a new folder.

    + body

+ Response 404 (application/json)

    Site not found.

    + body

### Folder Collection [GET //sites/:site_id/folders{?limit,offset,sortBy,sortOrder,fields,searchFields,search,includeIds,excludeIds,top,dateField,dateFrom,dateTo}]
Retrieve a list of folders.

Authentication required if you want to get private properties. Requires permission is follows.

* Manage Pages

+ Parameters
    + limit: `10` (optional, number) - Maximum number of folders to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `user_custom` (optional, string) - 
        + user_custom: Sort order you specified on the Manage Folders screen.
        + created_by: Sort by the ID of creator. 
        + id: Sort by its own ID.
        + basename: Sort by the basename of each folders.
        + label: Sort by the label of each folders.
    + sortOrder: `descend` (optional, string) - 
        + descend (default): Return folders in descending  order.
        + ascend: Return folders in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Folders resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + searchFields: `label,basename` (optional, string) - The comma separated field name list to search.
    + search (optional, string) - Search query.
    + includeIds (optional, string) - The comma separated ID list of folders to include to result.
    + excludeIds (optional, string) - The comma separated ID list of folders to exclude from result.
    + top: `0` (optional, number) - If set to 1, retrieves only top level folders.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes (Folder)

+ Response 403 (application/json)

    Do not have permission to retrieve folders.

    + body

+ Response 404 (application/json)

    Site not found.

    + body


## Folder Collection for parent folders [/sites/{site_id}/folders/{folder_id}/parents{?maxDepth,includeCurrent,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.
    + folder_id (required, number) - The folder ID.

### Folder Collection for parent folders [GET]
Retrieve a list of parent folders.

Authentication required if you want to get private properties. Requires permission is follows.

* Manage Pages

+ Parameters
    + maxDepth (optional, numner) - The depth of retrieving parent folders.
    + includeCurrent: `0` (optional, number) - 
        + 1: The results includes current folder.
        + 0: The results do not include current folder.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Folder], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve folders.

    + body

+ Response 404 (application/json)

    Site or folder not found.

    + body


## Folders Collection for siblings folders [/sites/{site_id}/folders/{folder_id}/siblings{?limit,offset,sortBy,sortOrder,fields,searchFields,search,includeIds,excludeIds,top,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID
    + folder_id (required, number) - The folder ID.

## Folders Collection for siblings folders [GET]
Retrieve a list of siblings folders.

Authentication required if you want to get private properties. Requires permission is follows.

* Manage Pages

+ Parameters
    + limit: `10` (optional, number) - Maximum number of folders to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `user_custom` (optional, string) - 
        + user_custom: Sort order you specified on the Manage Folders screen.
        + created_by: Sort by the ID of creator. 
        + id: Sort by its own ID.
        + basename: Sort by the basename of each folders.
        + label: Sort by the label of each folders.
    + sortOrder: `descend` (optional, string) - 
        + descend (default): Return folders in descending  order.
        + ascend: Return folders in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Folders resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + searchFields: `label,basename` (optional, string) - The comma separated field name list to search.
    + search (optional, string) - Search query.
    + includeIds (optional, string) - The comma separated ID list of folders to include to result.
    + excludeIds (optional, string) - The comma separated ID list of folders to exclude from result.
    + top: `0` (optional, number) - If set to 1, retrieves only top level folders.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Folder], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve folders.

    + body

+ Response 404 (application/json)

    Site or folder not found.

    + body


## Folders Collection for child filders [/sites/{site_id}/folders/{folder_id}/children{?maxDepth,includeCurrent,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID.
    + folder_id (required, number) - The folder ID.

### Folders Collection for child filders [GET]
Retrieve a list of child folders.

Authentication required if you want to get private properties. Requires permission is follows.

* Manage Pages

+ Parameters
    + maxDepth (optional, numner) - The depth of retrieving child folders.
    + includeCurrent: `0` (optional, number) - 
        + 1: The results includes current folder.
        + 0: The results do not include current folder.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Folder], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve folders.

    + body

+ Response 404 (application/json)

    Site or folder not found.

    + body


## folder [/sites/{site_id}/folders/{folder_id}{?fields}]

+ Parameters
    + site_id (required, number) - The site ID.
    + folder_id (required, number) - The folder ID.

### Fetch single folder [GET]
Retrieve a single folder by its ID.

+ Parameters
    + fields (optional, string) - The field list to retrieve as part of the folders resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.

+ Response 200 (application/json)

    + Attributes (Folder)

+ Response 403 (application/json)

    Do not have permission to retrieve a folder.

    + body

+ Response 404 (application/json)

    Site or folder not found.

    + body

### Update single folder [PUT]
**Authentication required.**

Update an existing folder. This endpoint need folllowing permissions.

+ Manage Pages

This method accepts PUT and POST with __method=PUT.

Post form data is following:

+ folder (Folder) - folder resource

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            folder={"basename" : "news","parent" : "0","archiveLink" : "http://example.com/news/index.html","updatable" : false,"label" : "News","class" : "folder","id" : "1","blog" : {"id" : "1"},"description" : null,"customFields" : [{"basename" : "bannerImage","value" : "http://example.com/images/banner.jpg"}]}

+ Response 200 (application/json)

    + Attributes (Folder)

+ Response 403 (application/json)

    Do not have permission to update a folder.

    + body

+ Response 404 (application/json)

    Site or folder not found.

    + body

### Delete single folder [DELETE]
**Authentication required.**

Update an existing folder. This endpoint need folllowing permissions.

+ Manage Pages

This method accepts DELETE and POST with __method=DELETE.

+ Response 200 (application/json)

    + Attributes (Folder)

+ Response 403 (application/json)

    Do not have permission to update a folder.

    + body

+ Response 404 (application/json)

    Site or folder not found.

    + body


## Save hierarchical folders order [/sites/{site_id}/folders/permutate]

+ Parameters
    + site_id (required, number) - The site ID.

### Save hierarchical folders order [POST]
**Authentication required.**

Save hierarchical folders order. This endpoint need folllowing permissions.

+ Manage Pages

This method returns rearranged folders collection.

Post form data is following:

+ folders (array[Folder]) - Array of folders resource that were rearranged.

+ Request

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            folders=[{"basename" : "news","parent" : "0","archiveLink" : "http://example.com/news/index.html","updatable" : false,"label" : "News","class" : "folder","id" : "1","blog" : {"id" : "1"},"description" : null,"customFields" : [{"basename" : "bannerImage","value" : "http://example.com/images/banner.jpg"},{"basename" : "pressreleases","parent" : "0","archiveLink" : "http://example.com/pressreleases/index.html","updatable" : false,"label" : "Press releases","class" : "folder","id" : "2","blog" : {"id" : "1"},"description" : null,}]

+ Response 200 (application/json)

    + Attributes (array[Folder], fixed-type)

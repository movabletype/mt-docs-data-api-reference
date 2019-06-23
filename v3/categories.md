# Group Categories

This is the Categories resource.

Property Name | Type | Data Type | Database Column | Private | Read Only | Description | Version
------------ | ------------- | ------------ | ------------ | ------------- | ------------ | ------------ | ------------
archiveLink | value | string | | | Y | The category archive URL of this category. If “Category” archive mapping is not configured, this value will be null. | v2
basename | value | string | mt_category_category_basename | | | The basename of this category. | v1
blog | object | - | | | | The blog of this category. | v1
blog.id | value | number | mt_category.category_blog_id | | Y | The ID of the blog that contains this category. | v1
class | value | string | mt_category.category_class | | Y | The object class for this category. | v1
createdBy | Object | - | | | Y | The user who created this category. | v2
createdBy.displayName | value | string | | | Y | The display name of the user who created this category. | v2
createdBy.id | value | number | mt_category.category_created_by | Y | Y | The ID of the user who created this category. | v2
createdBy.userpicUrl | value | string | | | Y | The URL of created user’s userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, empty string will be returned. | v2
createdDate | value | iso 8601 datetime | mt_ctegory.category_created_on | | Y | The created time for this category. | v2
customFields | ARRAY | - | | | | The list of customfields data for this category. | v1
customFields.basename | value | string | mt_field.field_basename | | | The basename of this customfield. | v1
customFields.value | value | string | | | | The value of this customfield. | v1
description | value | string | mt_category.category_description | | Y | The description of this category. | v1
id | value | number | mt_category.category_id | | Y | The ID of this category. | v1
label | value | string | mt_category.category_label | | Y | The label of this category. | v1
modifiedBy | Object | - | | | Y | The user who last modified this category. | v2
modifiedBy.id | value | number | mt_category.category_modified_by | Y | Y | The ID of user who last modified category. | v2
modifiedBy.displayName | value | string | | | Y | The display name of user who last modified category. | v2
modifiedBy.userpicUrl | value | string | | | Y | The URL of last modified user’s userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, empty string will be returned. | v2
modifiedDate | value | iso 8601 datetime | mt_category.category_modified_on | | Y | The last modified time for this category. | v2
parent | value | number | mt_category.cateogry_parent | | | The ID of the parent category for this category. This field can be updated from v2.  | v1
updatable | value | boolean | | | Y | <dl><dt>true</dt><dd>The user who accessed can update this category.</dd><dt>false</dt><dd>The user who accessed cannot update this category.</dd> | v2


            {
              "parent" : "0",
              "createdBy" : {
                "id" : 1
                "userpicUrl" : "/mt-static/support/assets_c/userpics/userpic-1-100x100.png",
                "displayName" : "Yuji Takayama"
              },
              "updatable" : false,
              "blog" : {
                "id" : "22"
              },
              "description" : "This category includes news articles",
              "basename" : "news",
              "archiveLink" : "http://example.com/news/index.html",
              "id" : 23,
              "class" : "category",
              "label" : "News",
              "createdDate" : "2014-11-05T12:48:27+09:00",
              "modifiedDate" : "2014-11-05T12:52:51+09:00",
              "modifiedBy" : {
                "id" : 1
                "userpicUrl" : "/mt-static/support/assets_c/userpics/userpic-1-100x100.png",
                "displayName" : "Yuji Takayama"
              },
              "customFields" : [
                {
                  "basename" : "bannerimage",
                  "value" : "<form mt:asset-id=\"3\" class=\"mt-enclosure mt-enclosure-image\" style=\"display: inline;\"><a href=\"http://localhost/blog/20141105-1/images/4db95178.png\">4db95178.png</a></form>"
                },
                {
                  "basename" : "address",
                  "value" : ""
                }

# Categories [/sites/{site_id}/categories/{category_id}]
## Retrieve a list of categories [GET /sites/{site_id}/categories{?search,searchFields,limit,offset,sortBy,sortOrder,fields,top,includeIds,excludeIds,dateField,dateFrom,dateTo}]

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of categories.
404 | Not Found | Site not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + search (optional, string) ... Search query.
    + searchFields = `label,basename` (optional, string) ... The comma separated list of field names to search.
    + limit = `10` (optional, number) ... Maximum number of categories to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `user_custom` (optional, string) ... <dl><dt>user_custom</dt><dd>Sort order you specified on the Manage Categories screen.</dd><dt>created_by</dt><dd>Sort by the ID of user who created each category.</dd><dt>id</dt><dd>Sort by the ID of each category.</dd><dt>basename</dt><dd>Sort by the basename of each category.</dd><dt>label</dt><dd>Sort by the label of each category.</dd></dl>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return categories in descending order.</dd><dt>ascend</dt><dd>Return categories in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Categories resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + top = `0` (optional, number) ... If set to 1, retrieves only top level categories. New in v2
    + includeIds (optional, string) ... The comma separated list of category IDs to include in result.
    + excludeIds (optional, string) ... The comma separated list of category IDs to exclude from result.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : "1",
          "items" : [
            {
            "basename" : "news",
            "parent" : "0",
            "archiveLink" : "http://example.com/news/index.html",
            "updatable" : false,
            "label" : "News",
            "class" : "category",
            "id" : 2,
            "blog" : {
              "id" : "1"
            },
            "description" : null
          ]
        }

## Retrieve a list of categories that related with entry. [GET /sites/{site_id}/entries/{entry_id}/categories{?search,searchFields,limit,offset,sortBy,sortOrder,fields,type,includeIds,excludeIds,top,dateField,dateFrom,dateTo}]

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of categories.
404 | Not Found | Site or Entry not found.

**Permissions**

+ edit_entry
    + If want to retrieve the non-published entry's categories.

+ Parameters
    + site_id (required, number) ... The site ID.
    + entry_id (required, number) ... The entry ID.
    + search (optional, string) ... Search query.
    + searchFields = `label,basename` (optional, string) ... The comma separated list of field names to search.
    + limit = `10` (optional, number) ... Maximum number of categories to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `user_custom` (optional, string) ... <dl><dt>user_custom</dt><dd>Sort order you specified on the Manage Categories screen.</dd><dt>created_by</dt><dd>Sort by the ID of user who created each category.</dd><dt>id</dt><dd>Sort by the ID of each category.</dd><dt>basename</dt><dd>Sort by the basename of each category.</dd><dt>label</dt><dd>Sort by the label of each category.</dd></dl>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return categories in descending order.</dd><dt>ascend</dt><dd>Return categories in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Categories resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + top = `0` (optional, number) ... If set to 1, retrieves only top level categories. New in v2
    + includeIds (optional, string) ... The comma separated list of category IDs to include in result.
    + excludeIds (optional, string) ... The comma separated list of category IDs to exclude from result.
    + type (optional, string) ... <dl><dt>primary</dt><dd>Retrieve primary category only</dd><dt>secondary</dt><dd>Retrieve secondary categories only</dd></dl>
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : "1",
          "items" : [
            {
            "basename" : "news",
            "parent" : "0",
            "archiveLink" : "http://example.com/news/index.html",
            "updatable" : false,
            "label" : "News",
            "class" : "category",
            "id" : 2,
            "blog" : {
              "id" : "1"
            },
            "description" : null
          ]
        }

## Retrieve a list of parent categories. [GET /sites/{site_id}/categories/{category_id}/parents{?maxDepth,includeCurrent,dateField,dateFrom,dateTo}]

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of categories.
404 | Not Found | Site or Category not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + category_id (required, number) ... The category ID.
    + maxDepth = `0` (optional, number) ... The depth of retrieving parent categories.
    + includeCurrent = `0` (optional, number) ... <dl><dt>1</dt><dd>The list does not include current category.</dd><dt>0</dt><dd>The list includes current category.</dd></dl>
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : "1",
          "items" : [
            {
            "basename" : "news",
            "parent" : "0",
            "archiveLink" : "http://example.com/news/index.html",
            "updatable" : false,
            "label" : "News",
            "class" : "category",
            "id" : 2,
            "blog" : {
              "id" : "1"
            },
            "description" : null
          ]
        }

## Retrieve a list of siblings categories. [GET /sites/{site_id}/categories/{category_id}/siblings{?search,searchFields,limit,offset,sortBy,sortOrder,fields,top,includeIds,excludeIds,dateField,dateFrom,dateTo}]

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of categories.
404 | Not Found | Site or Category not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + category_id (required, number) ... The category ID.
    + search (optional, string) ... Search query.
    + searchFields = `label,basename` (optional, string) ... The comma separated list of field names to search.
    + limit = `10` (optional, number) ... Maximum number of categories to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `user_custom` (optional, string) ... <dl><dt>user_custom</dt><dd>Sort order you specified on the Manage Categories screen.</dd><dt>created_by</dt><dd>Sort by the ID of user who created each category.</dd><dt>id</dt><dd>Sort by the ID of each category.</dd><dt>basename</dt><dd>Sort by the basename of each category.</dd><dt>label</dt><dd>Sort by the label of each category.</dd></dl>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return categories in descending order.</dd><dt>ascend</dt><dd>Return categories in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Categories resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + top = `0` (optional, number) ... If set to 1, retrieves only top level categories. New in v2
    + includeIds (optional, string) ... The comma separated list of category IDs to include in result.
    + excludeIds (optional, string) ... The comma separated list of category IDs to exclude from result.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : "1",
          "items" : [
            {
            "basename" : "news",
            "parent" : "0",
            "archiveLink" : "http://example.com/news/index.html",
            "updatable" : false,
            "label" : "News",
            "class" : "category",
            "id" : 2,
            "blog" : {
              "id" : "1"
            },
            "description" : null
          ]
        }

## Retrieve a list of child categories. [GET /sites/{site_id}/categories/{category_id}/children{?maxDepth,includeCurrent,dateField,dateFrom,dateTo}]

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of categories.
404 | Not Found | Site or Category not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + category_id (required, number) ... The category ID.
    + maxDepth = `0` (optional, number) ... The depth of retrieving parent categories.
    + includeCurrent = `0` (optional, number) ... <dl><dt>0</dt><dd>The list does not include current category.</dd><dt>1</dt><dd>The list includes current category.</dd></dl>
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : "1",
          "items" : [
            {
            "basename" : "news",
            "parent" : "0",
            "archiveLink" : "http://example.com/news/index.html",
            "updatable" : false,
            "label" : "News",
            "class" : "category",
            "id" : 2,
            "blog" : {
              "id" : "1"
            },
            "description" : null
          ]
        }

## Create a new category. [GET /sites/{site_id}/categories]
Authentication required.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to create a new category.
404 | Not Found | Site not found.

**Permission**

+ Manage Categories

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
category | Object | Yes | | Single Categories resource

+ Parameters
    + site_id (required, number) ... The site ID.

+ Request Assets resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            category={"basename" : "news","parent" : "0","archiveLink" : "http://example.com/news/index.html","updatable" : false,"label" : "News","class" : "category","id" : "1","blog" : {"id" : "1"},"description" : null,"customFields" : [{"basename" : "bannerImage","value" : "http://example.com/images/banner.jpg"}]}

+ Response 200 (application/json)

        {
          "totalResults" : "1",
          "items" : [
            {
            "basename" : "news",
            "parent" : "0",
            "archiveLink" : "http://example.com/news/index.html",
            "updatable" : false,
            "label" : "News",
            "class" : "category",
            "id" : 2,
            "blog" : {
              "id" : "1"
            },
            "description" : null
          ]
        }

## Retrieve a single category by its ID. [GET /sites/{site_id}/categories/{category_id}{?fields}]

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve an category.
404 | Not Found | Category or site not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + category_id (required, number) ... The category ID.
    + fields (optional, string) ... The field list to retrieve as part of the Categories resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.

+ Response 200 (application/json)

        {
          "basename" : "news",
          "parent" : "0",
          "archiveLink" : "http://example.com/news/index.html",
          "updatable" : false,
          "label" : "News",
          "class" : "category",
          "id" : 2,
          "blog" : {
            "id" : "1"
          },
          "description" : null
        }

## Update an existing category. [PUT]
Authentication required.

This method accepts PUT and POST with __method=PUT.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to update a category.
404 | Not Found | Site or Category not found.

**Permission**

+ Manage Categories

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
category | Object | Yes | | Single Categories resource

+ Parameters
    + site_id (required, number) ... The site ID.
    + category_id (required, number) ... The category ID.

+ Request Categories resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            category={"basename" : "news","parent" : "0","archiveLink" : "http://example.com/news/index.html","updatable" : false,"label" : "News","class" : "category","id" : "1","blog" : {"id" : "1"},"description" : null,"customFields" : [{"basename" : "bannerImage","value" : "http://example.com/images/banner.jpg"}]}

+ Response 200 (application/json)

        {
          "basename" : "news",
          "parent" : "0",
          "archiveLink" : "http://example.com/news/index.html",
          "updatable" : false,
          "label" : "News",
          "class" : "category",
          "id" : 2,
          "blog" : {
            "id" : "1"
          },
          "description" : null
        }

## Delete an existing category. [DELETE]
Authentication required.

This method accepts DELETE and POST with __method=DELETE.

This method returns deleted Category resource.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to delete a category.
404 | Not Found | Site or Category not found.

**Permission**

+ Manage Categories

+ Parameters
    + site_id (required, number) ... The site ID.
    + category_id (required, number) ... The category ID.

+ Response 200 (application/json)

        {
          "basename" : "news",
          "parent" : "0",
          "archiveLink" : "http://example.com/news/index.html",
          "updatable" : false,
          "label" : "News",
          "class" : "category",
          "id" : 2,
          "blog" : {
            "id" : "1"
          },
          "description" : null
        }

## Rearrange existing categories in a new order. [POST /sites/{site_id}/categories/permutate]
Authentication required.

This method returns rearranged Categories resource.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to delete a category.
404 | Not Found | Site not found.

**Permission**

+ Manage Categories

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
categories | ARRAY | Yes | | Array of Categories resource that were rearranged.

+ Parameters
    + site_id (required, number) ... The site ID.

+ Request Assets resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            category=[{"basename" : "news","parent" : "0","archiveLink" : "http://example.com/news/index.html","updatable" : false,"label" : "News","class" : "category","id" : "1","blog" : {"id" : "1"},"description" : null,"customFields" : [{"basename" : "bannerImage","value" : "http://example.com/images/banner.jpg"}]}]

+ Response 200 (application/json)

        [
          {
            "basename" : "news",
            "parent" : "0",
            "archiveLink" : "http://example.com/news/index.html",
            "updatable" : false,
            "label" : "News",
            "class" : "category",
            "id" : 2,
            "blog" : {
              "id" : "1"
            },
            "description" : null
          }
        ]


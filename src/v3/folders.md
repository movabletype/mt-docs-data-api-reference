#Group Folders

This is the Folders resource.

Property Name | Type | Data Type | Database Column | Private | Read Only | Description | Version
------------ | ------------- | ------------ | ------------ | ------------- | ------------ | ------------ | ------------
basename | value | string | mt_category.category_basename | | | The basename for this folder. | v2
blog | Object | Blog | | | Y | The blog for this folder. | v2
blog.id | value | number | mt_category.category_blog_id | | Y | The ID of the blog that contains this folder. | v2
class | value | string | mt_category.category_class | | Y | The class for this folder. Always "folder". | v2
createdBy | Object | User | | | Y | Created user of this folder. | v2
createdBy.displayName | value | string | mt_author.author_nickname | | Y | The display name of this folder creator. | v2
createdBy.id | value | number | mt_category.category_created_by | Y | Y | The ID of this folder creator. | v2
createdBy.userpicUrl | value | string | mt_author.author_userpic_url | | Y | The URL of this folder creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. | v2
createdDate | value | iso 8601 datetime | mt_category.category_created_on | | Y | Created date of this folder. | v2
customFields | ARRAY | Object | | | Y | The list of customfields data for this folder. | v2
customField.basename | value | string | mt_field.field_basename | | Y | The basename for this customfield. | v2
customField.value | value | string | mt_template_meta.* | | | The value of this customfield. | v2
description | value | string | mt_category.category_description | | | The description for this folder. | v2
id | value | number | mt_category.category_id | | Y | The ID for this folder. | v2
label | value | string | mt_category.category_label | | | The label for this folder. | v2
modifiedBy | Object | User | | | Y | Last modified user of this folder. | v2
modifiedBy.displayName | value | string | mt_author.author_nickname | | Y | The display name of this folder modifier. | v2
modifiedBy.id | value | number | mt_category.category_modified_by | Y | Y | The ID of this folder modifier. | v2
modifiedBy.userpicUrl | value | string | mt_author.author_userpic_url | | Y | The URL of this folder modifier's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. | New in v2
modifiedDate | value | iso 8601 datetime | mt_category.category_modified_on | | Y | Last modified date of this folder. | v2
path | value | string | | | Y | The path for this folder. | v2
updatable | value | boolean | | | Y | <dl><dt>true</dt><dd>The user who accessed can update this folder.</dd><dt>false</dt><dd>The user who accessed cannot update this folder.</dd></dl> | v2

        {
          "parent": "0",
          "createdBy": {
            "userpicUrl": null,
            "displayName": "Yuji Takayama"
          },
          "updatable": false,
          "blog": {
            "id": "2"
          },
          "path": "http://path/to/downloads/",
          "description": null,
          "basename": "downloads",
          "label": "downloads",
          "class": "folder",
          "id": 12,
          "createdDate": "2015-03-30T22:47:08+09:00",
          "modifiedDate": "2015-03-30T22:47:08+09:00",
          "customFields": []
        },

# Folders [/sites/{site_id}/folders/{folder_id}]
## Retrieve a list of folders [GET /sites/{site_id}/folders{?limit,offset,sortBy,sortOrder,fields,searchFields,search,includeIds,excludeIds,top,dateField,dateFrom,dateTo}]

Authentication required if you want to get private properties.

+ Parameters
    + site_id (required, number) ... The site ID
    + limit = `10` (optional, number) ... Maximum number of folders to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `user_custom` (optional, string) ... <dl><dt>user_custom</dt><dd>Sort order you specified on the Manage Folders screen.</dd><dt>created_by</dt><dd>Sort by the ID of creator. </dd><dt>id</dt><dd>Sort by its own ID.</dd><dt>basename</dt><dd>Sort by the basename of each folders.</dd><dt>label</dt><dd>Sort by the label of each folders.</dd></dl>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return folders in descending  order.</dd><dt>ascend</dt><dd>Return folders in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Folders resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + searchFields = `label,basename` (optional, string) ... The comma separated field name list to search.
    + search (optional, string) ... Search query.
    + includeIds (optional, string) ... The comma separated ID list of folders to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of folders to exclude from result.
    + top = `0` (optional, number) ... If set to 1, retrieves only top level folders.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : "1",
          "items" : [
            {
              "parent": "0",
              "createdBy": {
                "userpicUrl": null,
                "displayName": "Yuji Takayama"
              },
              "updatable": false,
              "blog": {
                "id": "2"
              },
              "path": "http://path/to/downloads/",
              "description": null,
              "basename": "downloads",
              "label": "downloads",
              "class": "folder",
              "id": 12,
              "createdDate": "2015-03-30T22:47:08+09:00",
              "modifiedDate": "2015-03-30T22:47:08+09:00",
              "customFields": []
            },
          ]
        }

## Retrieve a list of parent folders [GET /sites/{site_id}/folders/{folder_id}/parents{?maxDepth,includeCurrent,dateField,dateFrom,dateTo}]

Authentication required if you want to get private properties.

+ Parameters
    + site_id (required, number) ... The site ID.
    + folder_id (required, number) ... The folder ID.
    + maxDepth (optional, numner) ... The depth of retrieving parent folders.
    + includeCurrent = `0` (optional, number) ... <dl><dt>1</dt><dd>The results includes current folder.</dd><dt>0</dt>The results do not include current folder.</dd></dl>
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : "1",
          "items" : [
            {
              "parent": "0",
              "createdBy": {
                "userpicUrl": null,
                "displayName": "Yuji Takayama"
              },
              "updatable": false,
              "blog": {
                "id": "2"
              },
              "path": "http://path/to/downloads/",
              "description": null,
              "basename": "downloads",
              "label": "downloads",
              "class": "folder",
              "id": 12,
              "createdDate": "2015-03-30T22:47:08+09:00",
              "modifiedDate": "2015-03-30T22:47:08+09:00",
              "customFields": []
            },
          ]
        }

## Retrieve a list of sibling folders [GET /sites/{site_id}/folders/{folder_id}/siblings{?limit,offset,sortBy,sortOrder,fields,searchFields,search,includeIds,excludeIds,top,dateField,dateFrom,dateTo}]

Authentication required if you want to get private properties.

+ Parameters
    + site_id (required, number) ... The site ID
    + folder_id (required, number) ... The folder ID.
    + limit = `10` (optional, number) ... Maximum number of folders to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `user_custom` (optional, string) ... <dl><dt>user_custom</dt><dd>Sort order you specified on the Manage Folders screen.</dd><dt>created_by</dt><dd>Sort by the ID of creator. </dd><dt>id</dt><dd>Sort by its own ID.</dd><dt>basename</dt><dd>Sort by the basename of each folders.</dd><dt>label</dt><dd>Sort by the label of each folders.</dd></dl>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return folders in descending  order.</dd><dt>ascend</dt><dd>Return folders in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Folders resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + searchFields = `label,basename` (optional, string) ... The comma separated field name list to search.
    + search (optional, string) ... Search query.
    + includeIds (optional, string) ... The comma separated ID list of folders to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of folders to exclude from result.
    + top = `0` (optional, number) ... If set to 1, retrieves only top level folders.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : "1",
          "items" : [
            {
              "parent": "0",
              "createdBy": {
                "userpicUrl": null,
                "displayName": "Yuji Takayama"
              },
              "updatable": false,
              "blog": {
                "id": "2"
              },
              "path": "http://path/to/downloads/",
              "description": null,
              "basename": "downloads",
              "label": "downloads",
              "class": "folder",
              "id": 12,
              "createdDate": "2015-03-30T22:47:08+09:00",
              "modifiedDate": "2015-03-30T22:47:08+09:00",
              "customFields": []
            },
          ]
        }

## Retrieve a list of child folders [GET /sites/{site_id}/folders/{folder_id}/children{?maxDepth,includeCurrent,dateField,dateFrom,dateTo}]


+ Authentication required if you want to get private properties.

+ Parameters
    + site_id (required, number) ... The site ID.
    + folder_id (required, number) ... The folder ID.
    + maxDepth (optional, numner) ... The depth of retrieving child folders.
    + includeCurrent = `0` (optional, number) ... <dl><dt>1</dt><dd>The results includes current folder.</dd><dt>0</dt>The results do not include current folder.</dd></dl>
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : "1",
          "items" : [
            {
              "parent": "0",
              "createdBy": {
                "userpicUrl": null,
                "displayName": "Yuji Takayama"
              },
              "updatable": false,
              "blog": {
                "id": "2"
              },
              "path": "http://path/to/downloads/",
              "description": null,
              "basename": "downloads",
              "label": "downloads",
              "class": "folder",
              "id": 12,
              "createdDate": "2015-03-30T22:47:08+09:00",
              "modifiedDate": "2015-03-30T22:47:08+09:00",
              "customFields": []
            },
          ]
        }

## Create a new folder. [POST /sites/{site_id}/folders]
Authentication required.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to create a new folder.
404 | Not Found | Site not found.

**Permission**

+ Manage Pages

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
folder | Object | Yes | | Single Folders resource

+ Parameters
    + site_id (required, number) ... The site ID.

+ Request Folders resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            folder={"basename" : "news","parent" : "0","label" : "News","description" : null}

+ Response 200 (application/json)

        {
          "basename" : "news",
          "blog" : {
            "id" : "1"
          },
          "class" : "folder",
          "createdBy" : {
            "displayName" : "Masahiro IUCHI"
            "userpicUrl" : null,
          },
          "createdDate" : "2019-07-03T18:19:40+09:00",
          "customFields" : [],
          "description" : null,
          "id" : 2,
          "label" : "News",
          "modifiedDate" : "2019-07-03T18:19:40+09:00",
          "parent" : "0",
          "path" : "https://example.com/site/news",
          "updatable" : true
        }

## Retrieve a single folder by its ID. [GET /sites/{site_id}/folders/{folder_id}{?fields}]

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve a folder.
404 | Not Found | Folder or site not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + folder_id (required, number) ... The folder ID.
    + fields (optional, string) ... The field list to retrieve as part of the Folders resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.

+ Response 200 (application/json)

        {
          "basename" : "news",
          "blog" : {
            "id" : "1"
          },
          "class" : "folder",
          "createdBy" : {
            "displayName" : "Masahiro IUCHI"
            "userpicUrl" : null,
          },
          "createdDate" : "2019-07-03T18:19:40+09:00",
          "customFields" : [],
          "description" : null,
          "id" : 2,
          "label" : "News",
          "modifiedDate" : "2019-07-03T18:19:40+09:00",
          "parent" : "0",
          "path" : "https://example.com/site/news",
          "updatable" : false,
        }

## Update an existing folder. [PUT]
Authentication required.

This method accepts PUT and POST with __method=PUT.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to update a folder.
404 | Not Found | Site or Folder not found.

**Permission**

+ Manage Pages

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
folder | Object | Yes | | Single Folders resource

+ Parameters
    + site_id (required, number) ... The site ID.
    + folder_id (required, number) ... The folder ID.

+ Request Folders resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            folder={"basename" : "news","parent" : "0","label" : "News","description" : null}

+ Response 200 (application/json)

        {
          "basename" : "news",
          "blog" : {
            "id" : "1"
          },
          "class" : "folder",
          "createdBy" : {
            "displayName" : "Masahiro IUCHI"
            "userpicUrl" : null,
          },
          "createdDate" : "2019-07-03T18:19:40+09:00",
          "customFields" : [],
          "description" : null,
          "id" : 2,
          "label" : "News",
          "modifiedDate" : "2019-07-03T18:19:40+09:00",
          "parent" : "0",
          "path" : "https://example.com/site/news",
          "updatable" : true,
        }

## Delete an existing fodler. [DELETE]
Authentication required.

This method accepts DELETE and POST with __method=DELETE.

This method returns deleted Folder resource.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to delete a folder.
404 | Not Found | Site or Folder not found.

**Permission**

+ Manage Pages

+ Parameters
    + site_id (required, number) ... The site ID.
    + folder_id (required, number) ... The fodler ID.

+ Response 200 (application/json)

        {
          "basename" : "news",
          "blog" : {
            "id" : "1"
          },
          "class" : "folder",
          "createdBy" : {
            "displayName" : "Masahiro IUCHI"
            "userpicUrl" : null,
          },
          "createdDate" : "2019-07-03T18:19:40+09:00",
          "customFields" : [],
          "description" : null,
          "id" : 2,
          "label" : "News",
          "modifiedDate" : "2019-07-03T18:19:40+09:00",
          "parent" : "0",
          "path" : "https://example.com/site/news",
          "updatable" : true,
        }

## Rearrange existing folders in a new order. [POST /sites/{site_id}/folders/permutate]
Authentication required.

This method returns rearranged Folders resource.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to rearrange folders.
404 | Not Found | Site not found.

**Permission**

+ Manage Pages

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
folders | ARRAY | Yes | | Array of Folders resource that will be rearranged.

+ Parameters
    + site_id (required, number) ... The site ID.

+ Request Assets resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            folders=[{"id" : "2"},{"id" : "2"}]

+ Response 200 (application/json)

        [
          {
            "basename" : "news",
            "blog" : {
              "id" : "1"
            },
            "class" : "folder",
            "createdBy" : {
              "displayName" : "Masahiro IUCHI"
              "userpicUrl" : null,
            },
            "createdDate" : "2019-07-03T18:19:40+09:00",
            "customFields" : [],
            "description" : null,
            "id" : 2,
            "label" : "News",
            "modifiedDate" : "2019-07-03T18:19:40+09:00",
            "parent" : "0",
            "path" : "https://example.com/site/news",
            "updatable" : true,
          },
          {
            "basename" : "events",
            "blog" : {
              "id" : "1"
            },
            "class" : "folder",
            "createdBy" : {
              "displayName" : "Masahiro IUCHI"
              "userpicUrl" : null,
            },
            "createdDate" : "2019-07-03T18:19:40+09:00",
            "customFields" : [],
            "description" : null,
            "id" : 1,
            "label" : "Events",
            "modifiedDate" : "2019-07-03T18:19:40+09:00",
            "parent" : "0",
            "path" : "https://example.com/site/events",
            "updatable" : true,
          }
        ]

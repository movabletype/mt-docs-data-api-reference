# Group Assets
This is the Assets resource.

+ Model (application/json)

Property Name | Type | Data Type | Database Column | Private | Read Only | Description | Version
------------ | ------------- | ------------ | ------------ | ------------- | ------------ | ------------ | ------------
blog | object | - | | | | The blog of this asset. | v2
blog.id | value | number | mt_asset.asset_blog_id | | Y | The ID of the blog that contains this asset. | v2
class | value | string | mt_asset.asset_class | | Y | The type of this asset. This value is similar to 'type' attribute but this value is never localized. | v2
createdBy | Object | - | | | Y | The user who created this asset. | v2
createdBy.id | value | number | mt_asset.asset_created_by | Y | Y | The ID of user who created asset. | v2
createdBy.displayName | value | string | | | Y | The display name of user who created asset. | v2
createdBy.userpicUrl | value | string | | | Y | The URL of creating user’s userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, empty string will be returned. | v2
createdDate | value | iso 8601 datetime | mt_asset.asset_created_on | | Y | The created time for this asset. | v2
customFields | ARRAY | - | | | | The list of customfields data for this asset. | v2
customFields.basename | value | string | mt_field.field_basename | | | The basename of this customfield. | v2
customFields.value | value | string | | | | The value of this customfield. | v2
description | value | string | mt_asset_asset_description | | | The description of this asset. | v1
fileExt | value | string | mt_asset.asset_file_ext | | Y | The file extension of this asset. Returns the file extension without the leading period. | v2
filename | value | string | mt_asset.asset_filename | | Y | The filename of this asset that includes file extension. | v1
id | value  | number | mt_asset.asset_id | | Y | The ID of this asset. | v1
label | value  | string | mt_asset.asset_label | | | The label of this asset. | v1
meta | object | - | | | | The meta information of this asset. | v2
meta.fileSize | value | number | | | Y | The file size of this asset. If this asset is not file-based asset, will return null. | v2
meta.height | value | number | | | Y | The height of this asset. If this asset has no height meta information, will return null. | v2
meta.width | value | number | | | Y | The width of this asset. If this asset has no width meta information, will return null. | v2
mimeType | value | string | mt_asset.asset_mime_type | | Y | The MIME Type of this asset. | v1
modifiedBy | Object | - | | | Y | The user who last modified this asset. | v2
modifiedBy.displayName | value | string | | | Y | The display name of user who last modified asset. | v2
modifiedBy.id | value | number | mt_asset.asset_modified_by | Y | Y | The ID of user who last modified asset. | v2
modifiedBy.userpicUrl | value | string | | | Y | The URL of last modified user’s userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, empty string will be returned. | v2
modifiedDate | value | iso 8601 datetime | mt_asset.asset_modified_on | | Y | The last modified time for this asset. | v2
parent | object | - | | | | The parent asset of this asset. If this asset is not a child of any assets, will return null. | v2
parent.id | value | number | asset_parent | | Y | The ID of parent asset. | v2
tags | ARRAY | string | | | | A list of tags associated with this asset. | v1
type | value | string | mt_asset.asset_class | | Y | The type of this asset. The value returned will be localized value with DefaultLanguage. | v2
updatable | value | boolean | | | Y | <dl><dt>true</dt><dd>The user who accessed can update this asset.</dd><dt>false</dt><dd>The user who accessed cannot update this asset.</dd> | v2
url | value | string | mt_asset.asset_url | | Y | The permalink URL of this asset. | v1

            {
              "createdBy" : {
                "id" : 1
                "userpicUrl" : "/mt-static/support/assets_c/userpics/userpic-1-100x100.png",
                "displayName" : "Yuji Takayama"
              },
              "updatable" : false,
              "meta" : {
                "width" : "800",
                "fileSize" : 194272,
                "height" : "600"
              },
              "url" : "http://example.com/images/1ab89ee2.jpg",
              "id" : "5",
              "modifiedDate" : "2014-11-05T12:59:36+09:00",
              "modifiedBy" : {
                "id" : 1
                "userpicUrl" : "/mt-static/support/assets_c/userpics/userpic-1-100x100.png",
                "displayName" : "Yuji Takayama"
              },
              "parent" : null,
              "blog" : {
                "id" : "22"
              },
              "description" : "Cat photo",
              "tags" : [
                "black",
                "cat",
                "white"
              ],
              "filename" : "1ab89ee2.jpg",
              "type" : "Images",
              "mimeType" : "image/jpeg",
              "label" : "Cat One",
              "createdDate" : "2014-11-05T12:58:52+09:00",
              "class" : "image",
              "customFields" : [],
              "fileExtension" : "jpg"
            },

# Upload [/assets/upload{?overwrite_once}]
## Upload a single file. [POST]
Upload a single file.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to upload file.
404 | Not Found | Site not found.
409 | Conflict | Uploaded file already exists.
413 | Request Entity Too Large | Upload file size is larger than CGIMaxUpload.

**Permissions**

+ upload

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
site_id | number | Yes | | The site ID.
path | string | Yes | | The upload destination. You can specify the path to be under the site path.
file | file | Yes | | Actual file data
autoRenameIfExists | boolean | | false | If this value is true and a file with the same filename exists, the uploaded file is automatically renamed to a random generated name.
normalizeOrientation | boolean | | true | If this value is true and the uploaded file has orientation information in Exif data, this file’s orientation is automatically normalized.

+ parameter

    + overwrite_once (optional, number) ... If  specify “1”, the API always overwrites an existing file with the uploaded file. This parameter is available in Movable Type 6.1.2

+ Request multipart/form-data

    + Body

            site_id=1&path=/images&file={filedata}&autoRenameIfExists=true&normalizeOrientation=false

+ Response 200 (application/json)

        {
          "id" : 1,
          "label" : "The Bridge",
          "mimeType" : "image/jpeg",
          "url" : "http://example.com/images/the-bridge.jpg",
          "filename" : "the-bridge",
          "description" : "Taken from over the bridge.",
          "tags" : [
            "boston",
            "bridge",
            "light"
          ],
          "blog" : {
            "id" : 1
          },
          "updatable" : true,
          "modifiedBy" : {
            "id" : 1,
            "displayName" : "Yuji Takayama",
            "userpicUrl" : null
          },
          "modifiedDate" : "2014-10-10T13:13:01+09:00",
          "createdBy" : {
            "id" : 1,
            "displayName" : "Yuji Takayama",
            "userpicUrl" : null
          },
          "cratedDate" : "2014-10-10T13:13:01+09:00",
          "type" : "Image",
          "class" : "image",
          "fileExt" : "jpg",
          "parent" : {
            "id" : null
          },
          "meta" : {
            "height" : 768,
            "width" : 1024,
            "fileSize" : 339773
          }
        }

## DEPRECATED - Upload a single file. [POST /sites/{site_id}/assets/upload]
***This endpoint is marked as deprecated in v2.0.***

Upload single file to specific site.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to upload file.
404 | Not Found | Site not found.
409 | Conflict | Uploaded file already exists.
413 | Request Entity Too Large | Upload file size is larger than CGIMaxUpload.

**Permissions**

+ upload



Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
path | string | Yes | | The upload destination. You can specify the path to be under the site path. This parameter is required.
file | file | Yes | | Actual file data
autoRenameIfExists | boolean | | false | If this value is true and a file with the same filename exists, the uploaded file is automatically renamed to a random generated name.
normalizeOrientation | boolean | | true | If this value is true and the uploaded file has orientation information in Exif data, this file’s orientation is automatically normalized.

+ Parameters
    + site_id (required, number) ... The site ID.

+ Request (multipart/form-data)

    + Body

            path=/images&file={filedata}&autoRenameIfExists=true&normalizeOrientation=false

+ Response 200 (application/json)

        {
          "id" : 1,
          "label" : "The Bridge",
          "mimeType" : "image/jpeg",
          "url" : "http://example.com/images/the-bridge.jpg",
          "filename" : "the-bridge",
          "description" : "Taken from over the bridge.",
          "tags" : [
            "boston",
            "bridge",
            "light"
          ],
          "blog" : {
            "id" : 1
          },
          "updatable" : true,
          "modifiedBy" : {
            "id" : 1,
            "displayName" : "Yuji Takayama",
            "userpicUrl" : null
          },
          "modifiedDate" : "2014-10-10T13:13:01+09:00",
          "createdBy" : {
            "id" : 1,
            "displayName" : "Yuji Takayama",
            "userpicUrl" : null
          },
          "cratedDate" : "2014-10-10T13:13:01+09:00",
          "type" : "Image",
          "class" : "image",
          "fileExt" : "jpg",
          "parent" : {
            "id" : null
          },
          "meta" : {
            "height" : 768,
            "width" : 1024,
            "fileSize" : 339773
          }
        }

# Assets [/sites/{site_id}/assets/{asset_id}]
## Retrieve a list of assets. [GET /sites/{site_id}/assets{?search,searchFields,limit,offset,class,sortBy,sortOrder,fields,relatedAssets,dateField,dateFrom,dateTo}]
Retrieve list of assets in the specified site.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of assets.
404 | Not Found | Site not found.

+ Parameters
    + site_id (required, number) ... The site ID. If 0 specified, will retrieve system-level assets.
    + search (optional, string) ... Search query.
    + searchFields = `label` (optional, string) ... The comma separated list of field names to search.
    + limit = `50` (optional, number) ... Maximum number of assets to retrieve. An integer value between 1 and 2147483647.
    + offset = `0` (optional, number) ... 0-indexed offset. An integer value between 0 and 2147483647.
    + class (optional, string) ... The target asset class to retrieve. Supported values are 'image’, 'audio’, 'video’, 'file’, and any values added by plugins. If you want to retrieve multiple classes, specify the values separated by commas.
    + sortBy = `created_on` (optional, string) ... <dl><dt>file_name</dt><dd>Sort by the filename of each asset.</dd><dt>created_by</dt><dd>Sort by the ID of user who created each asset. </dd><dt>created_on</dt><dd>(default) Sort by the created time of each asset.</dd></dl>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return assets in descending order. For sorting by date, it means from newest to oldest.</dd><dt>ascend</dt><dd>Return assets in ascending order. For sorting by date, it means from oldest to newest.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Assets resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + relatedAssets (optional, boolean) ... If you want to retrieve related assets (e.g. thumbnail, popup html) that generated by original asset, you should specify this parameter as true.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
          {
            "id" : 1,
            "label" : "The Bridge",
            "mimeType" : "image/jpeg",
            "url" : "http://example.com/images/the-bridge.jpg",
            "filename" : "the-bridge",
            "description" : "Taken from over the bridge.",
            "tags" : [
              "boston",
              "bridge",
              "light"
            ],
            "blog" : {
              "id" : 1
            },
            "updatable" : true,
            "modifiedBy" : {
              "id" : 1,
              "displayName" : "Yuji Takayama",
              "userpicUrl" : null
            },
            "modifiedDate" : "2014-10-10T13:13:01+09:00",
            "createdBy" : {
              "id" : 1,
              "displayName" : "Yuji Takayama",
              "userpicUrl" : null
            },
            "cratedDate" : "2014-10-10T13:13:01+09:00",
            "type" : "Image",
            "class" : "image",
            "fileExt" : "jpg",
            "parent" : {
              "id" : null
            },
            "meta" : {
              "height" : 768,
              "width" : 1024,
              "fileSize" : 339773
            }
          ]
        }

## Retrieve a list of assets that related with entry [GET /sites/{site_id}/entries/{entry_id}/assets{?limit,offset,class,sortBy,sortOrder,fields,dateField,dateFrom,dateTo}]

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of assets.
404 | Not Found | Site or entry not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + entry_id (required, number) ... The entry ID.
    + limit = `50` (optional, number) ... Maximum number of assets to retrieve. An integer value between 1 and 2147483647.
    + offset = `0` (optional, number) ... 0-indexed offset. An integer value between 0 and 2147483647.
    + class (optional, string) ... The target asset class to retrieve. Supported values are image, audio, video, file and any values added by plugins. If you want to retrieve multiple classes, specify the values separated by commas.
    + sortBy = `created_on` (optional, string) ... <dl><dt>file_name</dt><dd>Sort by the filename of each asset.</dd><dt>created_by</dt><dd>Sort by the ID of user who created each asset.</dd><dt>created_on</dt><dd>(default) Sort by the created time of each asset.</dd></dl>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return assets in descending order. For sorting by date, it means from newest to oldest.</dd><dt>ascend</dt><dd>Return assets in ascending order. For sorting by date, it means from oldest to newest.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Assets resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
          {
            "id" : 1,
            "label" : "The Bridge",
            "mimeType" : "image/jpeg",
            "url" : "http://example.com/images/the-bridge.jpg",
            "filename" : "the-bridge",
            "description" : "Taken from over the bridge.",
            "tags" : [
              "boston",
              "bridge",
              "light"
            ],
            "blog" : {
              "id" : 1
            },
            "updatable" : true,
            "modifiedBy" : {
              "id" : 1,
              "displayName" : "Yuji Takayama",
              "userpicUrl" : null
            },
            "modifiedDate" : "2014-10-10T13:13:01+09:00",
            "createdBy" : {
              "id" : 1,
              "displayName" : "Yuji Takayama",
              "userpicUrl" : null
            },
            "cratedDate" : "2014-10-10T13:13:01+09:00",
            "type" : "Image",
            "class" : "image",
            "fileExt" : "jpg",
            "parent" : {
              "id" : null
            },
            "meta" : {
              "height" : 768,
              "width" : 1024,
              "fileSize" : 339773
            }
          ]
        }

## Retrieve a list of assets that related with page [GET /sites/{site_id}/pages/{page_id}/assets{?limit,offset,class,sortBy,sortOrder,fields,dateField,dateFrom,dateTo}]
Retrieve assets that related with specified page.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of assets.
404 | Not Found | Site or page not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + page_id (required, number) ... The page ID.
    + limit = `50` (optional, number) ... Maximum number of assets to retrieve. An integer value between 1 and 2147483647.
    + offset = `0` (optional, number) ... 0-indexed offset. An integer value between 0 and 2147483647.
    + class (optional, string) ... The target asset class to retrieve. Supported values are image, audio, video, file and any values added by plugins. If you want to retrieve multiple classes, specify the values separated by commas.
    + sortBy = `created_on` (optional, string) ... <dl><dt>file_name</dt><dd>Sort by the filename of each asset.</dd><dt>created_by</dt><dd>Sort by the ID of user who created each asset.</dd><dt>created_on</dt><dd>(default) Sort by the created time of each asset.</dd></dl>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return assets in descending order. For sorting by date, it means from newest to oldest.</dd><dt>ascend</dt><dd>Return assets in ascending order. For sorting by date, it means from oldest to newest.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Assets resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
          {
            "id" : 1,
            "label" : "The Bridge",
            "mimeType" : "image/jpeg",
            "url" : "http://example.com/images/the-bridge.jpg",
            "filename" : "the-bridge",
            "description" : "Taken from over the bridge.",
            "tags" : [
              "boston",
              "bridge",
              "light"
            ],
            "blog" : {
              "id" : 1
            },
            "updatable" : true,
            "modifiedBy" : {
              "id" : 1,
              "displayName" : "Yuji Takayama",
              "userpicUrl" : null
            },
            "modifiedDate" : "2014-10-10T13:13:01+09:00",
            "createdBy" : {
              "id" : 1,
              "displayName" : "Yuji Takayama",
              "userpicUrl" : null
            },
            "cratedDate" : "2014-10-10T13:13:01+09:00",
            "type" : "Image",
            "class" : "image",
            "fileExt" : "jpg",
            "parent" : {
              "id" : null
            },
            "meta" : {
              "height" : 768,
              "width" : 1024,
              "fileSize" : 339773
            }
          ]
        }

## Retrieve a list of assets that related with tag. [GET /sites/{site_id}/tags/{tag_id}/assets{?limit,offset,class,sortBy,sortOrder,fields,dateField,dateFrom,dateTo}]

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of assets.
404 | Not Found | Site or tag not found.


+ Parameters
    + site_id (required, number) ... The site ID.
    + tag_id (required, number) ... The tag ID.
    + limit = `50` (optional, number) ... Maximum number of assets to retrieve. An integer value between 1 and 2147483647.
    + offset = `0` (optional, number) ... 0-indexed offset. An integer value between 0 and 2147483647.
    + class (optional, string) ... The target asset class to retrieve. Supported values are image, audio, video, file and any values added by plugins. If you want to retrieve multiple classes, specify the values separated by commas.
    + sortBy = `created_on` (optional, string) ... <dl><dt>file_name</dt><dd>Sort by the filename of each asset.</dd><dt>created_by</dt><dd>Sort by the ID of user who created each asset.</dd><dt>created_on</dt><dd>(default) Sort by the created time of each asset.</dd></dl>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return assets in descending order. For sorting by date, it means from newest to oldest.</dd><dt>ascend</dt><dd>Return assets in ascending order. For sorting by date, it means from oldest to newest.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Assets resource. The list of fields should be separated by commas. If this parameter is not specified, all fields will be returned.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
          {
            "id" : 1,
            "label" : "The Bridge",
            "mimeType" : "image/jpeg",
            "url" : "http://example.com/images/the-bridge.jpg",
            "filename" : "the-bridge",
            "description" : "Taken from over the bridge.",
            "tags" : [
              "boston",
              "bridge",
              "light"
            ],
            "blog" : {
              "id" : 1
            },
            "updatable" : true,
            "modifiedBy" : {
              "id" : 1,
              "displayName" : "Yuji Takayama",
              "userpicUrl" : null
            },
            "modifiedDate" : "2014-10-10T13:13:01+09:00",
            "createdBy" : {
              "id" : 1,
              "displayName" : "Yuji Takayama",
              "userpicUrl" : null
            },
            "cratedDate" : "2014-10-10T13:13:01+09:00",
            "type" : "Image",
            "class" : "image",
            "fileExt" : "jpg",
            "parent" : {
              "id" : null
            },
            "meta" : {
              "height" : 768,
              "width" : 1024,
              "fileSize" : 339773
            }
          ]
        }

## Retrieve a single asset by its ID. [GET /sites/{site_id}/assets/{asset_id}{?fields}]

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve an asset.
404 | Not Found | Asset (or site) not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + asset_id (required, number) ... The asset ID.
    + fields (optional, string) ... The field list to retrieve as part of the Assets resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.

+ Response 200 (application/json)

        {
          "id" : 1,
          "label" : "The Bridge",
          "mimeType" : "image/jpeg",
          "url" : "http://example.com/images/the-bridge.jpg",
          "filename" : "the-bridge",
          "description" : "Taken from over the bridge.",
          "tags" : [
            "boston",
            "bridge",
            "light"
          ],
          "blog" : {
            "id" : 1
          },
          "updatable" : true,
          "modifiedBy" : {
            "id" : 1,
            "displayName" : "Yuji Takayama",
            "userpicUrl" : null
          },
          "modifiedDate" : "2014-10-10T13:13:01+09:00",
          "createdBy" : {
            "id" : 1,
            "displayName" : "Yuji Takayama",
            "userpicUrl" : null
          },
          "cratedDate" : "2014-10-10T13:13:01+09:00",
          "type" : "Image",
          "class" : "image",
          "fileExt" : "jpg",
          "parent" : {
            "id" : null
          },
          "meta" : {
            "height" : 768,
            "width" : 1024,
            "fileSize" : 339773
          }
        }

## Update an asset. [PUT]

Authentication required.

This method accepts PUT and POST with __method=PUT.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
401 | Unauthorized | Authentication required
403 | Forbidden | Do not have permission to update an asset.
404 | Not Found | Asset (or site) not found.
405 | Method Not Allowed | Request method is not 'PUT' or 'POST' with '__method=PUT'

**Permissions**

+ Manage Assets

+ Parameters
    + site_id (required, number) ... The site ID.
    + asset_id (required, number) ... The asset ID.

+ Request Assets resource


    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            asset={
              "url" : "http://localhost/blog/20140917-2/images/0cf61aae.jpg",
              "id" : "1",
              "parent" : null,
              "blog" : {
                "id" : "1"
              },
              "description" : "Over the rainbow.",
              "tags" : [
                "boston",
                "bridge",
                "light",
                "night"
              ],
              "label" : "Night Bridge",
            }


+ Response 200 (application/json)

        {
          "id" : 1,
          "label" : "Night Bridge",
          "mimeType" : "image/jpeg",
          "url" : "http://example.com/images/the-bridge.jpg",
          "filename" : "the-bridge",
          "description" : "Over the rainbow.",
          "tags" : [
            "boston",
            "bridge",
            "light",
            "night"
          ],
          "blog" : {
            "id" : 1
          },
          "updatable" : true,
          "modifiedBy" : {
            "id" : 1,
            "displayName" : "Yuji Takayama",
            "userpicUrl" : null
          },
          "modifiedDate" : "2014-10-10T14:13:01+09:00",
          "createdBy" : {
            "id" : 1,
            "displayName" : "Yuji Takayama",
            "userpicUrl" : null
          },
          "cratedDate" : "2014-10-10T13:13:01+09:00",
          "type" : "Image",
          "class" : "image",
          "fileExt" : "jpg",
          "parent" : {
            "id" : null
          },
          "meta" : {
            "height" : 768,
            "width" : 1024,
            "fileSize" : 339773
          }
        }

## Delete an asset. [DELETE]

Authentication required.

This method accepts DELETE and POST with __method=DELETE.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
401 | Unauthorized | Authentication required
403 | Forbidden | Do not have permission to delete an asset.
404 | Not Found | Asset (or site) not found.
405 | Method Not Allowed | Request method is not 'DELETE' or 'POST' with '__method=DELETE'

**Permissions**

+ Manage Assets

+ Parameters
    + site_id (required, number) ... The site ID.
    + asset_id (required, number) ... The asset ID.

+ Response 200 (application/json)

        {
          "id" : 1,
          "label" : "The Bridge",
          "mimeType" : "image/jpeg",
          "url" : "http://example.com/images/the-bridge.jpg",
          "filename" : "the-bridge",
          "description" : "Taken from over the bridge.",
          "tags" : [
            "boston",
            "bridge",
            "light"
          ],
          "blog" : {
            "id" : 1
          },
          "updatable" : false,
          "modifiedBy" : {
            "id" : 1,
            "displayName" : "Yuji Takayama",
            "userpicUrl" : null
          },
          "modifiedDate" : "2014-10-10T13:13:01+09:00",
          "createdBy" : {
            "id" : 1,
            "displayName" : "Yuji Takayama",
            "userpicUrl" : null
          },
          "cratedDate" : "2014-10-10T13:13:01+09:00",
          "type" : "Image",
          "class" : "image",
          "fileExt" : "jpg",
          "parent" : {
            "id" : null
          },
          "meta" : {
            "height" : 768,
            "width" : 1024,
            "fileSize" : 339773
          }
        }

# Thumbnail [/sites/{site_id}/assets/{asset_id}/thumbnail{?width,height,scale,square}]
## Get thumbnail image for an asset. [GET]

This endpoint requires one of parameter 'width' or 'height' or 'scale' Also, cannot use these parameters at same time.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
400 | Bad Request | An asset does not support to generate thumbnail file.
403 | Forbidden | Do not have permission to update an asset.
404 | Not Found | Asset (or site) not found.

**Permissions**

+ Parameters
    + site_id (required, number) ... The site ID.
    + asset_id (required, number) ... The asset ID.
    + width (optional, number) ... The width of the thumbnail to generate. If this is the only parameter specified then the thumbnail’s width will be scaled proportionally to the height. When a value longer than the original image is specified, it will be ignored.
    + height (optional, number) ... The height of the thumbnail to generate. If this is the only parameter specified then the thumbnail’s height will be scaled proportionally to the width. When both of height and width are specified, the longer side of the original image will be processed, and the lesser side will be scaled proportionally.
    + scale (optional, string) ... The percentage by which to reduce or increase the size of the current asset.
    + square (optional, boolean) ... If set to true then the thumbnail generated will be square, where the length of each side of the square will be equal to the shortest side of the image.

+ Response 200 (application/json)

        {
          "height": 200,
          "width": 200,
          "url": "http://example.com/assets_c/2014/10/the-bridge-200x200-1.jpg"
        }


# Data Structures

## Asset
+ blog
    + id (number) - The ID of the blog that contains this asset.
+ class (string) - The type of this asset. This value is similar to 'type' attribute but this value is never localized.
+ createdBy
    + id (number) - The ID of user who created asset.
    + displayName (string) - The display name of user who created asset.
    + userpicUrl (string) - The URL of creating user’s userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, empty string will be returned.
+ createdDate (string) - The created time for this asset. (format: iso 8601 datetime)
+ customFields (array)
    + basename (string) - The basename of this customfield.
    + value (string) - The value of this customfield.
+ description (string) - The description of this asset.
+ fileExt (string) - The file extension of this asset. Returns the file extension without the leading period.
+ filename (string) - The filename of this asset that includes file extension.
+ id (number) - The ID of this asset.
+ label (string) - The label of this asset.
+ meta
    + fileSize (number) - The file size of this asset. If this asset is not file-based asset, will return null.
    + height (number) - The height of this asset. If this asset has no height meta information, will return null
    + width (number) - The width of this asset. If this asset has no width meta information, will return null.
+ mimeType (string) - The MIME Type of this asset.
+ modifiedBy
    + id (number) - The ID of user who modified asset.
    + displayName (string) - The display name of user who modified asset.
    + userpicUrl (string) - The URL of modifying user’s userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, empty string will be returned.
+ modifiedDate (string) - The last modified time for this asset.  (format: iso 8601 datetime)
+ parent
    + id (number) - The ID of parent asset.
+ tags (array[string]) - A list of tags associated with this asset.
+ updatable (boolean)

    true: The user who accessed can update this asset.

    false: The user who accessed cannot update this asset.

+ url (string) - The permalink URL of this asset.


# Group Assets
This is the Assets resource.

## Upload [/assets/upload{?overwrite_once}]

### Upload a single file. [POST]
Upload a single file. This endpoint needs following permissions.

* upload

Post form data is following:

* site_id: 1 (number, required) - The site ID to upload.
* path: `/images` (string) - The upload destination.
* autoRenameIfExists: true (boolean) - If true specified, uploaded file will be renamed automatically when same file already exists.
* normalizeOrientation: false (boolean) - If true spoecified, automatically modify file orientation by EXIF record.


+ parameters
    + overwrite_once (optional, number) - If  specify “1”, the API always overwrites an existing file with the uploaded file. This parameter is available in Movable Type 6.1.2

+ Request (multipart/form-data)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<TOKEN>

+ Response 200 (application/json)

    No Errors.

    + Attributes (Asset)

+ Response 403 (application/json)

    Do not have permission to upload file.

    + body

+ Response 404 (application/json)

    Site not found.

    + body

+ Response 409 (application/json)

    Uploaded file already exists.

    + body

+ Response 413 (application/json)

    Upload file size is larger than CGIMaxUpload.

    + body


## Assets Collection [/sites/{site_id}/assets{?search,searchFields,limit,offset,class,sortBy,sortOrder,fields,relatedAssets,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id (required, number) - The site ID. If 0 specified, will retrieve system-level assets.

### Retrieve a list of assets. [GET]
Retrieve list of assets in the specified site.

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `label` (optional, string) - The comma separated list of field names to search.
    + limit: 10 (optional, number) - Maximum number of assets to retrieve.
    + offset: 0 (optional, number) - 0-indexed offset.
    + class (optional, string) - The target asset class to retrieve. Supported values are 'image’, 'audio’, 'video’, 'file’, and any values added by plugins. If you want to retrieve multiple classes, specify the values separated by commas.
    + sortBy: `created_on` (optional, string) - 
    
        * file_name: Sort by the filename of each asset.
        * created_by: Sort by the ID of user who created each asset.
        * created_on (default): Sort by the created time of each asset.

    + sortOrder: `descend` (optional, string) - 
    
        * descend (default): Return assets in descending order. For sorting by date, it means from newest to oldest.
        * ascend: Return assets in ascending order. For sorting by date, it means from oldest to newest.

    + fields (optional, string) - The field list to retrieve as part of the Assets resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + relatedAssets (optional, boolean) - If you want to retrieve related assets (e.g. thumbnail, popup html) that generated by original asset, you should specify this parameter as true.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    No Errors.

    + Attributes (array[Asset], fixed-type)

+ Response 403 (application/json)

    Do not have permission to retrieve the list of assets.

    + body

+ Response 404 (application/json)

    Site not found.

    + body

## Assets Collection by entry [/sites/{site_id}/entries/{entry_id}/assets{?limit,offset,class,sortBy,sortOrder,fields,dateField,dateFrom,dateTo}]

+ Parameters

    + site_id (required, number) - The site ID.
    + entry_id (required, number) - The entry ID.

### Retrieve a list of assets that related with entry [GET]
Retrieve assets that related with specified entry.

+ Parameters
    + limit: 10 (optional, number) - Maximum number of assets to retrieve.
    + offset: 0 (optional, number) - 0-indexed offset.
    + class (optional, string) - The target asset class to retrieve. Supported values are image, audio, video, file and any values added by plugins. If you want to retrieve multiple classes, specify the values separated by commas.
    + sortBy: `created_on` (optional, string) - 
    
        * file_name: Sort by the filename of each asset.
        * created_by: Sort by the ID of user who created each asset.
        * created_on (default): Sort by the created time of each asset.

    + sortOrder: `descend` (optional, string) - 
    
        * descend (default): Return assets in descending order. For sorting by date, it means from newest to oldest.
        * ascend: Return assets in ascending order. For sorting by date, it means from oldest to newest.

    + fields (optional, string) - The field list to retrieve as part of the Assets resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes (array[Asset], fixed-type)

+ Response 403 (application/json)

    Do not have permission to retrieve the list of assets.

    + body

+ Response 404 (application/json)

    Site or entry not found.

    + body


## Assets Collection by page [/sites/{site_id}/pages/{page_id}/assets{?limit,offset,class,sortBy,sortOrder,fields,dateField,dateFrom,dateTo}]

+ Parameters

    + site_id (required, number) - The site ID.
    + page_id (required, number) - The page ID.

### Retrieve a list of assets that related with page [GET]
Retrieve assets that related with specified page.

+ Parameters
    + limit: 10 (optional, number) - Maximum number of assets to retrieve.
    + offset: 0 (optional, number) - 0-indexed offset.
    + class (optional, string) - The target asset class to retrieve. Supported values are image, audio, video, file and any values added by plugins. If you want to retrieve multiple classes, specify the values separated by commas.
    + sortBy: `created_on` (optional, string) - 
    
        * file_name: Sort by the filename of each asset.
        * created_by: Sort by the ID of user who created each asset.
        * created_on (default): Sort by the created time of each asset.

    + sortOrder: `descend` (optional, string) - 
    
        * descend (default): Return assets in descending order. For sorting by date, it means from newest to oldest.
        * ascend: Return assets in ascending order. For sorting by date, it means from oldest to newest.

    + fields (optional, string) - The field list to retrieve as part of the Assets resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes (array[Asset], fixed-type)

+ Response 403 (application/json)

    Do not have permission to retrieve the list of assets.

    + body

+ Response 404 (application/json)

    Site or page not found.

    + body


## Assets Collection by tag [/sites/{site_id}/tags/{tag_id}/assets{?limit,offset,class,sortBy,sortOrder,fields,dateField,dateFrom,dateTo}]

+ Parameters

    + site_id (required, number) - The site ID.
    + tag_id (required, number) - The page ID.

### Retrieve a list of assets that related with tag. [GET]
Retrieve assets that related with specified tag.

+ Parameters
    + limit: 10 (optional, number) - Maximum number of assets to retrieve.
    + offset: 0 (optional, number) - 0-indexed offset.
    + class (optional, string) - The target asset class to retrieve. Supported values are image, audio, video, file and any values added by plugins. If you want to retrieve multiple classes, specify the values separated by commas.
    + sortBy: `created_on` (optional, string) - 
    
        * file_name: Sort by the filename of each asset.
        * created_by: Sort by the ID of user who created each asset.
        * created_on (default): Sort by the created time of each asset.

    + sortOrder: `descend` (optional, string) - 
    
        * descend (default): Return assets in descending order. For sorting by date, it means from newest to oldest.
        * ascend: Return assets in ascending order. For sorting by date, it means from oldest to newest.

    + fields (optional, string) - The field list to retrieve as part of the Assets resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + dateField: `created_on` (optional, string) - Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) - The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) - The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

    + Attributes (array[Asset], fixed-type)

+ Response 403 (application/json)

    Do not have permission to retrieve the list of assets.

    + body

+ Response 404 (application/json)

    Site or tag not found.

    + body


## Asset [/sites/{site_id}/assets/{asset_id}{?fields}]

+ Parameters
    + site_id: 1 (number, required) - The site ID.
    + asset_id: 1 (number, required) - The asset ID.

## Fetch single asset [GET]
Retrieve a single asset by its ID.

+ Parameters
    + fields (optional, string) - The field list to retrieve as part of the Assets resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.

+ Response 200 (application/json)

    + Attributes (array[Asset], fixed-type)

+ Response 403 (application/json)

    Do not have permission to retrieve an asset.

    + body

+ Response 404 (application/json)

    Site or asset not found.

    + body


### Update an asset. [PUT]
**Authentication required.**

Update an asset. This endpoint needs following permissions.

+ Manage Assets

This method accepts PUT and POST with __method=PUT.

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

    + Attributes (Asset)

+ Response 401 (application/json)

    Authentication required

    + body

+ Response 403 (application/json)

    Do not have permission to update an asset.

    + body

+ Response 404 (application/json)

    Asset (or site) not found.

    + body

+ Response 405 (application/json)

    Request method is not 'PUT' or 'POST' with '__method=PUT'.

    + body

## Delete an asset. [DELETE]
**Authentication required.**

Delete an asset. This endpoint needs following permissions.

+ Manage Assets

This method accepts DELETE and POST with __method=DELETE.

+ Response 200 (application/json)

    + Attributes (Asset)

+ Response 401 (application/json)

    Authentication required

    + body

+ Response 403 (application/json)

    Do not have permission to delete an asset.

    + body

+ Response 404 (application/json)

    Asset (or site) not found.

    + body

+ Response 405 (application/json)

    Request method is not 'DELETE' or 'POST' with '__method=DELETE'.

    + body


## Thumbnail [/sites/{site_id}/assets/{asset_id}/thumbnail{?width,height,scale,square}]

+ Parameters
    + site_id: 1 (number, required) - The site ID.
    + asset_id: 1 (number, required) - The asset ID.

### Get thumbnail image for an asset. [GET]

This endpoint requires one of parameter 'width' or 'height' or 'scale' Also, cannot use these parameters at same time.

+ Parameters
    + width: 200 (optional, number) - The width of the thumbnail to generate. If this is the only parameter specified then the thumbnail’s width will be scaled proportionally to the height. When a value longer than the original image is specified, it will be ignored.
    + height: 200 (optional, number) - The height of the thumbnail to generate. If this is the only parameter specified then the thumbnail’s height will be scaled proportionally to the width. When both of height and width are specified, the longer side of the original image will be processed, and the lesser side will be scaled proportionally.
    + scale: 50 (optional, number) - The percentage by which to reduce or increase the size of the current asset.
    + square:true (optional, boolean) - If set to true then the thumbnail generated will be square, where the length of each side of the square will be equal to the shortest side of the image.

+ Response 200 (application/json)

    + body

            {
              "height": 200,
              "width": 200,
              "url": "http://example.com/assets_c/2014/10/the-bridge-200x200-1.jpg"
            }

+ Response 400 (application/json)

    An asset does not support to generate thumbnail file.

    + body

+ Response 404 (application/json)

    Asset (or site) not found.

    + body


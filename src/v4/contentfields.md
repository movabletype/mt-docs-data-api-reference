# Group Content Fields
Each content fields contains some option fields. Which options are available by the field, please see the table below.

## Content Field Options
### Single Line Text
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ initial_value - Initial value of this field. This means the initial display value rather than the default value at save.
+ label (string) - The label of this field.
+ max_length (number) - The maximum length of this field value.
+ min_length (number) - The minimum length of this field value.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### Multi Line Text
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ initial_value - Initial value of this field. This means the initial display + value rather than the default value at save.
+ input_format (string) - The name of input format of this field.
+ label (string) - The label of this field.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### Number
+ decimal_places (number) - The length of decimal places.
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ initial_value - Initial value of this field. This means the initial display value rather than the default value at save.
+ label (string) - The label of this field.
+ max_value (number) - The maximum value of this field.
+ min_value (number) - The minimum value of this field.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### URL
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ initial_value - Initial value of this field. This means the initial display value rather than the default value at save.
+ label (string) - The label of this field.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### Date and Time
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ initial_value - Initial value of this field. This means the initial display value rather than the default value at save.
+ label (string) - The label of this field.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### Date
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ initial_value - Initial value of this field. This means the initial display value rather than the default value at save.
+ label (string) - The label of this field.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### Time
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ initial_value - Initial value of this field. This means the initial display value rather than the default value at save.
+ label (string) - The label of this field.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### Select Box
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ label (string) - The label of this field.
+ max (number) - The maximum number that can be selected for this field.
+ min (number) - The minimum number that should be selected for this field.
+ multiple (number) -
    + `0`: This field cannot accept multiple selection.
    + `1`: This field accept multiple selection.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.
+ values (array) - List of label-value pairs.
    + checked: `checked` (string) - If this field value is checked, return `checked`. Otherwise, return null.
    + label (string) - The label of this field value.
    + value (string) - The value of this field value.

### Radio Button
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ label (string) - The label of this field.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.
+ values (array) - List of label-value pairs.
    + checked: `checked` (string) - If this field value is checked, return `checked`. Otherwise, return null.
    + label (string) - The label of this field value.
    + value (string) - The value of this field value.

### Checkboxes
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ label (string) - The label of this field.
+ max (number) - The maximum number that can be selected for this field.
+ min (number) - The minimum number that should be selected for this field.
+ multiple (number) -
    + `0`: This field cannot accept multiple selection.
    + `1`: This field accept multiple selection.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.
+ values (array) - List of label-value pairs.
    + checked: `checked` (string) - If this field value is checked, return `checked`. Otherwise, return null.
    + label (string) - The label of this field value.
    + value (string) - The value of this field value.

### Asset
+ allow_upload (number):
    + `0`: Users can upload new asset in this field.
    + `1`: Users cannot upload new asset in this field.
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ label (string) - The label of this field.
+ max (number) - The maximum number that can be selected for this field.
+ min (number) - The minimum number that should be selected for this field.
+ multiple (number) -
    + `0`: This field cannot accept multiple selection.
    + `1`: This field accept multiple selection.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### Audio
+ allow_upload (number):
    + `0`: Users can upload new asset in this field.
    + `1`: Users cannot upload new asset in this field.
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ label (string) - The label of this field.
+ max (number) - The maximum number that can be selected for this field.
+ min (number) - The minimum number that should be selected for this field.
+ multiple (number) -
    + `0`: This field cannot accept multiple selection.
    + `1`: This field accept multiple selection.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### Video
+ allow_upload (number):
    + `0`: Users can upload new asset in this field.
    + `1`: Users cannot upload new asset in this field.
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ label (string) - The label of this field.
+ max (number) - The maximum number that can be selected for this field.
+ min (number) - The minimum number that should be selected for this field.
+ multiple (number) -
    + `0`: This field cannot accept multiple selection.
    + `1`: This field accept multiple selection.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### Image
+ allow_upload (number):
    + `0`: Users can upload new asset in this field.
    + `1`: Users cannot upload new asset in this field.
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ label (string) - The label of this field.
+ max (number) - The maximum number that can be selected for this field.
+ min (number) - The minimum number that should be selected for this field.
+ multiple (number) -
    + `0`: This field cannot accept multiple selection.
    + `1`: This field accept multiple selection.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### Embedded Text
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ initial_value - Initial value of this field. This means the initial display value rather than the default value at save.
+ label (string) - The label of this field.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### Tag
+ can_add (number) -
    + `0`: Users can create a new categories in this field.
    + `1`: Users cannot create a new categories in this field.
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ initial_value - Initial value of this field. This means the initial display value rather than the default value at save.
+ label (string) - The label of this field.
+ max (number) - The maximum number that can be selected for this field.
+ min (number) - The minimum number that should be selected for this field.
+ multiple (number) -
    + `0`: This field cannot accept multiple selection.
    + `1`: This field accept multiple selection.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### List
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ label (string) - The label of this field.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### Table
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ increase_decrease_cols (number) -
    + `0`: Users can increase/decrease columns.
    + `1`: Users cannot increase/decrease columns.
+ increase_decrease_rows (number) -
    + `0`: Users can increase/decrease rows.
    + `1`: Users cannot increase/decrease rows.
+ initial_cols (number) - The number of initial columns.
+ initial_rows (number) - The number of initial rows.
+ label (string) - The label of this field.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.

### Content Type
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ label (string) - The label of this field.
+ max (number) - The maximum number that can be selected for this field.
+ min (number) - The minimum number that should be selected for this field.
+ multiple (number) -
    + `0`: This field cannot accept multiple selection.
    + `1`: This field accept multiple selection.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.
+ source (number) - The ID of content type that linked with this field.

### Category Set
+ can_add (number) -
    + `0`: Users can create a new categories in this field.
    + `1`: Users cannot create a new categories in this field.
+ category_set (number) - The ID of category set that linked with this field.
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ label (string) - The label of this field.
+ max (number) - The maximum number that can be selected for this field.
+ min (number) - The minimum number that should be selected for this field.
+ multiple (number) -
    + `0`: This field cannot accept multiple selection.
    + `1`: This field accept multiple selection.
+ required (number) -
    + `0`: This field is not required.
    + `1`: This field is required.


## Content Field Collection [/sites/{site_id}/contentTypes/{content_type_id}/fields{?limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,dateField,dateFrom,dateTo}]

+ Parameters
    + site_id: 1 (number, required) - The site ID.
    + content_type_id: 1 (number, required) - The content type ID.

### Content Field Collection [GET]
**Authentication required**

Retrieve a list of Content Fields of the specified Content Type. This endpoint requires following permission.

* Manage Content Types

+ Parameters
    + limit: 50 (optional, number) - Maximum number of entries to retrieve. An integer value between 1 and 2147483647.
    + offset: `0` (optional, number) - 0-indexed offset. An integer value between 0 and 2147483647.
    + sortBy: `id` (optional, string) - The field name for sort. You can specify one of following values.
        * name
        * dataLabel
        * uniqueID
        * modified_on
    + sortOrder: `descend` (optional, string) - 
        * descend (default): Return entries in descending order.
        * ascend: Return entries in ascending order.
    + fields (optional, string) - The field list to retrieve as part of the Entries resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) - The comma separated ID list of entries to include to result.
    + excludeIds (optional, string) - The comma separated ID list of entries to exclude from result.

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[ContentField], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve content fields.

    + body

+ Response 404 (application/json)

    Site or content type not found.

    + body


## Content Field [/sites/{site_id}/contentTypes/{content_type_id}/fields/{content_field_id}{?fields}]

+ parameters
    + site_id: 1 (number,required) - The site ID
    + content_type_id: 1 (number, required) - The content type ID
    + content_field_id: 1 (number, required) - The content field ID

### Fetch single Content Field [GET]
**Authentication required**

Fetch single content field. This endpoint requires following permission.

* Manage Content Types

+ Response 200 (application/json)

    + Attributes (ContentField)

+ Response 403 (application/json)

    Do not have permission to retrieve a content field.

    + body

+ Response 404 (application/json)

    Site, content type or content field not found.

    + body

### Update Content Type [PUT]
**Authentication required**

Update content type. This endpoint requires following permission.

* Manage Content Types

:::note
If you want to update label, descrption and required, should be use options field. (e.g, {"options":{"label":"foo"}})
:::

:::note
This method accepts PUT or POST with parameter '__method=PUT'.
:::

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            content_field={"description": "New description"}

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

Delete content field from specified content type. This endpoint requires following permission.

* Manage Content Types

:::note
This method accepts DELETE or POST with parameter '__method=DELETE'.
:::

+ Response 200 (application/json)

    + Attributes (ContentField)

+ Response 403 (application/json)

    Do not have permission to delete a content field.

    + body

+ Response 404 (application/json)

    Site, content type or content field not found.

    + body


## Save hierarchical content field order [/sites/{site_id}/content_types{content_type_id}/fields/permutate]

+ parameters
    + site_id: 1 (number,required) - The site ID
    + content_type_id: 1 (number, required) - The content type ID

## Save hierarchical content field order [POST]
**Authentication required.**

Rearranges content field order in specified content type. This endpoint need folllowing permissions.

* Manage Content Types

This method returns rearranged ContentField collection.

Post form data is following:

+ content_fields (array[ContentField]) - Array of content fields resource that were rearranged.

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>
    + Body

            content_fields=[{"id":"1"}, {"id":"2"}, {"id":"4"}, {"id":"3"},]

+ Response 200 (application/json)

    + Attributes (array[ContentField], fixed-type)

# Group Templates

## Template Collection [/sites/{site_id}/templates{?site_id,limit,offset,sortBy,sortOrder,fields,searchFields,search,includeIds,excludeIds,type}]

+ Parameters
    + site_id (required, number) - The site ID. If 0 specified, that means global template in the system.

### Template Collection [GET]
**Authentication required.**

Retrieve a list of templates. This endpoint requires following permissions.

* edit_templates (site level or system lebel)

+ Parameters
    + search (optional, string) - Search query.
    + searchFields: `label` (optional, string) - The comma separated list of field names to search.
    + limit: `10` (optional, number) - Maximum number of templates to retrieve.
    + offset: `0` (optional, number) - 0-indexed offset.
    + sortBy: `name` (optional, string) - 
        * id: Sort by the ID of each template.
        * name: Sort by the name of each template.
        * created_on: Sort by the created time of each template.
        * modified_on: Sort by the modified time of each template.
        * created_by: Sort by the ID of user who created each template.
        * modified_by: Sort by the ID of user who modified each template.
        * type: Sort by the type of each template.
    + sortOrder: `descend` (optional, string) -
        * descend: Return templates in descending order. For sorting by date, it means from newest to oldest.
        * ascend: Return templates in ascending order. For sorting by date, it means from oldest to newest.
    + fields (optional, string) - The field list to retrieve as part of the Templates resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + includeIds (optional, string) - The comma separated list of template IDs to include in result.
    + excludeIds (optional, string) - The comma separated list of template IDSs to exclude from result.
    + type (optional, string) - Filter by template type. The list should be separated by commas. (e.g. archive, custom, index, individual, page etc-)

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Template], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve the list of templates.

    + body

+ Response 404 (application/json)

    Site not found.

    + body

+ Response 500 (application/json)

    Application runtime error.

    + body

### Create a new template [POST]
**Authentication required.**
Create a new template. This endpoint requires following permissions.

* edit_templates (site level or system lebel)

Post form data is following.

+ template (Templatem, required) - Single template resource

+ Request (application/x-www-form-urlencoded)

    + Body

            template={ "name": "New Template", "text": "some template code here", "linkToFile": "", "type": "custom" }

+ Response 200 (application/json)

    + Attributes (Template)

+ Response 403 (application/json)

    Do not have permission to create a new templte.

    + body

+ Response 404 (application/json)

    Site not found.

    + body

+ Response 500 (application/json)

    Application runtime error.

    + body


## Template [/sites/{site_id}/templates/{template_id}{?fields}]

+ Parameters
    + site_id (required, number) - The site ID. If 0 specified, that means a global template in the system.
    + template_id (required, number) - The template ID.

### Fetch single template  [GET]
**Authentication required.**

Retrieve a single template by its ID. This endpoint requires following permissions.

* edit_templates (site level or system lebel)

+ Parameters
    + fields (optional, string) - The field list to retrieve as part of the Templates resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.

+ Response 200 (application/json)

    + Attributes (Template)

+ Response 403 (application/json)

    Do not have permission to fetch templte.

    + body

+ Response 404 (application/json)

    Site or template not found.

    + body

+ Response 500 (application/json)

    Application runtime error.

    + body

### Update a template [PUT]
**Authentication required.**

Update a template. This endpoint requires following permissions.

* edit_templates (site level or system lebel)

Post form data is following.

+ template (Templatem, required) - Single template resource

:::note
This method accepts PUT or POST with __method=PUT.
:::

+ Request (application/x-www-form-urlencoded)

    + Body

            template={ "name": "New Template" }

+ Response 200 (application/json)

    + Attributes (Template)

+ Response 403 (application/json)

    Do not have permission to update a templte.

    + body

+ Response 404 (application/json)

    Site or template not found.

    + body

+ Response 500 (application/json)

    Application runtime error.

    + body

### Delete a template [DELETE]
**Authentication required.**
Delete a template. This endpoint requires following permissions.

* edit_templates (site level or system lebel)

:::note
This method accepts DELETE or POST with __method=DELETE.
:::

+ Response 200 (application/json)

    + Attributes (Template)

+ Response 403 (application/json)

    Do not have permission to delete a templte.

    + body

+ Response 404 (application/json)

    Site or template not found.

    + body

+ Response 500 (application/json)

    Application runtime error.

    + body


## Publish template [/sites/{site_id}/templates/{template_id}/publish]

+ Parameters
    + site_id (required, number) - The site ID.
    + template_id (required, number) - The template ID.

### Publish template [POST]
**Authentication required.**
Publish (in other words rebuild) a template. This endpoint requires following permissions.

+ rebuild

:::note
Only available for following templates
+ index
+ archive
+ individual
+ page
+ category
:::

+ Response 200 (application/json)

    + Attributes
        + status: `success` (string) - Result

+ Response 400 (application/json)

    Cannot publish required template.

    + body

+ Response 403 (application/json)

    Do not have permission to publish a templte.

    + body

+ Response 404 (application/json)

    Site or template not found.

    + body

+ Response 500 (application/json)

    Application runtime error.

    + body


## Clone template [/sites/{site_id}/templates/{template_id}/clone]

+ Parameters
    + site_id (required, number) - The site ID. If 0 specified, that means a global template in the system.
    + template_id (required, number) - The template ID.

### Clone template [POST]
**Authentication required.**
Make a clone of a template. This endpoint requires following permissions.

+ edit_templates

+ Response 200 (application/json)

    + Attributes
        + status: `success` (string) - Result

+ Response 403 (application/json)

    Do not have permission to publish a templte.

    + body

+ Response 404 (application/json)

    Site or template not found.

    + body

+ Response 500 (application/json)

    Application runtime error.

    + body


## Refresh template [/sites/{site_id}/templates/{template_id}/refresh]

+ Parameters
    + site_id (required, number) - The site ID. If 0 specified, refresh a global template in the system.
    + template_id (required, number) - The template ID.

### Refresh template [POST]
**Authentication required.**
Reset template text to theme default or tempalte_set default. This endpoint requires following permissions.

+ edit_templates

+ Response 200 (application/json)

    + Attributes
        + messages (string) - Result message
        + status: `success` (string) - Result

+ Response 403 (application/json)

    Do not have permission to publish a templte.

    + body

+ Response 404 (application/json)

    Site or template not found.

    + body

+ Response 500 (application/json)

    Application runtime error.

    + body


## Reset all template [/sites/{site_id}/refresh_templates{?refresh_type}]

+ Parameters
    + site_id (required, number) - The site ID. If 0 specified, refresh a global template in the system.

### Reset all template [POST]
**Authentication required.**
Reset all templates to default. This endpoint requires following permissions.

+ edit_templates

+ Parameters
    + refresh_type: `refresh` (optional, string) - The type of refresh mode.
        + refresh: Refresh all templates. However, A template that created by user will never refreshed and never removed from a site.
        + clean: Refresh all templates. In this mode, A template that created by user will removed from a site.

+ Response 200 (application/json)

    + Attributes
        + status: `success` (string) - Result

+ Response 403 (application/json)

    Do not have permission to publish a templte.

    + body

+ Response 404 (application/json)

    Site or template not found.

    + body

+ Response 500 (application/json)

    Application runtime error.

    + body


## Make a preview by data [/sites/{site_id}/templates/preview{?raw}]

+ Parameters
    + site_id (required, number) - The site ID.

## Make a preview by data [POST]
**Authentication required.**

Make a template preview by specified data. This endpoint requires following permissions.

+ edit_templates

Post form data is following
+ template (Template, required) - The single template resource.

:::note
`type` parameter in the Templates resource is required.
:::

+ Parameters
    + raw (optional, number) -  If specify “1”, will be returned preview contents.

+ Request (application/x-www-form-urlencoded)

    + Body

            template={ "name": "New Template", "text": "some template code here", "type": "custom" }

+ Response 200 (application/json)

    + Attributes
        + status (string) - The result status of this call.
        + preview (string) - The url of preview file.

+ Response 403 (application/json)

    Do not have permission to publish a templte.

    + body

+ Response 404 (application/json)

    Site or template not found.

    + body

+ Response 500 (application/json)

    Application runtime error.

    + body


## Make a preview by ID [/sites/{site_id}/templates/{template_id}/preview{?raw}]

+ Parameters
    + site_id (required, number) - The site ID.
    + template_id (required, number) - The template ID.

### Make a preview by ID [POST]
**Authentication required.**

Make a template preview by ID. This endpoint requires following permissions.

+ edit_templates

:::note
Only available for following templates
+ index
+ archive
+ individual
+ page
+ category
:::

:::note
+ ***template*** parameter is required. If you just want to get preview template from existing data, you should provide ***template*** parameter with empty json.
:::

+ Parameters
    + raw (optional, number) -  If specify “1”, will be returned preview contents.

+ Request (application/x-www-form-urlencoded)

    + Body

            template=

+ Response 200 (application/json)

    + Attributes
        + status (string) - The resukt status of this call.
        + preview (string) - The url of preview file.

+ Response 403 (application/json)

    Do not have permission to publish a templte.

    + body

+ Response 404 (application/json)

    Site or template not found.

    + body

+ Response 500 (application/json)

    Application runtime error.

    + body

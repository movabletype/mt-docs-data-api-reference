# Group Templates

This is the Templates resource.

Property Name | Type | Data Type | Database Column | Private | Read Only | Description | Version
------------ | ------------- | ------------ | ------------ | ------------- | ------------ | ------------ | ------------
archiveTypes | ARRAY | Templatemap | | Y | Y | This archive types for this template. | v2
archiveType.id | value | Number | mt_templatemap.templatemap_id | Y | Y | The ID for this archive type. | v2
archiveType.isPreferred | value | boolean | mt_templatemap.templatemap_is_preferred | Y | Y | <dl><dt>true</dt><dd>This archive type is preferred in all archive types of the requested template.</dd><dt>false</dt><dd>This archive type not is preferred in all archive types of the requested template.</dd></dl> | v2
archiveType.fileTemplate | value | String | mt_templatemap.templatemap_file_template | Y | Y | The file template for this archive type. | v2
archiveType.archiveType | value | String | mt_templatemap.templatemap_archive_type | Y | Y | The archive type for this archive type. | v2
archiveType.buildType | value | String | mt_templatemap.templatemap_build_type | Y | Y | The build type for this archive type. | v2
archiveType.updatable | value | boolean | | Y | Y | <dl><dt>true</dt><dd>The user who accessed can update this archive type.</dd><dt>false</dt><dd>The user who accessed cannot update this archive type.</dd></dl> | v2
updatable | value | boolean | | Y | Y | <dl><dt>true</dt><dd>The user who accessed can update this template.</dd><dt>false</dt><dd>The user who accessed cannot update this template.</dd></dl> | v2
blog | Object | Blog | | Y | Y | The blog of this template. | v2
blog.id | value | Number | mt_template.template_blog_id | Y | Y | The ID of the blog that contains this template. | v2
buildType | value | String | mt_template.template_build_type | Y | | The build type for this template. Available value is follows.<dl><dt>0</dt><dd>never publish this template.</dd><dt>1</dt><dd>publish this template whenever its contents are updated or affected by a change.</dd><dt>2</dt><dd>publish this template when a publish request received.</dd><dt>3</dt><dd>publish this template on demand, but do not publish a file to the file system.</dd><dt>4</dt><dd>publish this template in the background. </dd><dt>5</dt><dd>currently not in use.</dd></dl> | v2
createdBy | Object | User | | Y | Y | Created user of this template. | v2
createdBy.id | value | Number | mt_template.template_created_by | Y | Y | The ID of this template creator. | v2
createdBy.displayName | value | String | mt_author.author_nickname | Y | Y | The display name of this template creator. | v2
createdBy.userpicUrl | value | String | mt_author.author_userpic_url | Y | Y | The URL of this template creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. | v2
createdDate | value | iso 8601 datetime | mt_template.template_created_on | Y | Y | Created date of this template. | v2
customFields | ARRAY | Field | | Y | Y | The list of customfields data of this template. | v2
customField.basename | value | String | mt_field.field_basename | Y | Y | The basename of this customfield. | v2
customField.value | value | String | mt_template_meta.* | Y | | The value of this customfield. | v2
id | value | Number | mt_template.template_id | Y | Y | The ID for this template. | v2
linkToFie | value | String | mt_template.template_linked_file | Y | | The linked output filename for this template. | v2
modifiedBy | Object | User | | Y | Y | Last modified user of this template. | v2
modifiedBy.id | value | Number | mt_template.template_modified_by | Y | Y | The ID of this template modifier. | v2
modifiedBy.displayName | value | String | mt_author.author_nickname | Y | Y | The display name of this template modifier. | v2
modifiedBy.userpicUrl | value | String | mt_author.author_userpic_url | Y | Y | The URL of this template modifier's userpic. The userpic modifiedDate | value | iso 8601 datetime | mt_template.template_modified_on | Y | Y | Last modified date of this template. | v2
will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. | v2
name | value | String | mt_template.template_name | Y | | The name for this template. | v2
outputFile | value | String | mt_template.template_outfile | Y | | The output filename for this template. | v2
text | value | String | mt_template.template_text | Y | | The text for this template. | v2
type | value | String | mt_template.template_type | Y | | The type for this template. | v2
templateType | value | String | mt_template.template_identifier | Y | | The identifier for this template. | v2

                {
                  "createdBy": {
                    "userpicUrl": null,
                    "id": "1",
                    "displayName": "Yuji Takayama"
                  },
                  "name": "HTML Header",
                  "updatable": true,
                  "blog": {
                    "id": "1"
                  },
                  "text": "    <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">\n    <link rel=\"stylesheet\" href=\"<$mt:Link template=\"styles\" encode_html=\"1\"$>\">\n    <!--[if lt IE 9]>\n    <link rel=\"stylesheet\" href=\"&lt;$mt:Link template=\"styles_ie\" encode_html=\"1\"$>\">\n    <script src=\"&lt;$mt:SupportDirectoryURL encode_html=\"1\"$>theme_static/rainier/js/html5shiv.js\"></script>\n    <![endif]-->\n    <mt:Assets tag=\"@SITE_FAVICON\" limit=\"1\"><link rel=\"shortcut icon\" href=\"<$mt:AssetURL encode_html=\"1\"$>\"></mt:Assets>\n    <link rel=\"start\" href=\"<$mt:BlogURL encode_html=\"1\"$>\">\n    <link rel=\"alternate\" type=\"application/atom+xml\" title=\"Recent Entries\" href=\"<$mt:Link template=\"feed_recent\"$>\" />\n    <$mt:CanonicalLink$>\n    <$mt:StatsSnippet$>\n",
                  "linkToFile": "",
                  "createdDate": "2015-05-22T13:19:53+09:00",
                  "id": "33",
                  "type": "custom",
                  "modifiedDate": "2015-05-22T13:19:53+09:00",
                  "customFields": []
                }


## listTemplates [/sites/{site_id}/templates{?site_id,limit,offset,sortBy,sortOrder,fields,searchFields,search,includeIds,excludeIds,type}]
### new in v2.0: Retrieve a list of templates in the specified site. [GET]

+ Authorization is required.

**Permissions**

+ edit_templates

+ Parameters
    + site_id (required, number) ... The site ID. If 0 specified, will load from global template in the system.
    + search (optional, string) ... Search query.
    + searchFields = `label` (optional, string) ... The comma separated list of field names to search.
    + limit = `10` (optional, number) ... Maximum number of templates to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `name` (optional, string) ... <dl><dt>id</dt><dd>Sort by the ID of each template.</dd><dt>name</dt><dd>Sort by the name of each template.</dd><dt>created_on</dt><dd>Sort by the created time of each template.</dd><dt>modified_on</dt><dd>Sort by the modified time of each template.</dd><dt>created_by</dt><dd>Sort by the ID of user who created each template.</dd><dt>modified_by</dt><dd>Sort by the ID of user who modified each template.</dd><dt>type</dt><dd>Sort by the type of each template.</dd></dt>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>Return templates in descending order. For sorting by date, it means from newest to oldest.</dd><dt>ascend</dt><dd>Return templates in ascending order. For sorting by date, it means from oldest to newest.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Templates resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.
    + includeIds (optional, string) ... The comma separated list of template IDs to include in result.
    + excludeIds (optional, string) ... The comma separated list of template IDSs to exclude from result.
    + type (optional, string) ... Filter by template type. The list should be separated by commas. (e.g. archive, custom, index, individual, page etc...)

+ Response 200 (application/json)

        {
          "totalResults": "29",
          "items": [
            {
              "createdBy": {
                "userpicUrl": null,
                "id": "1",
                "displayName": "Yuji Takayama"
              },
              "name": "HTML Header",
              "updatable": true,
              "blog": {
                "id": "1"
              },
              "text": "    <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">\n    <link rel=\"stylesheet\" href=\"<$mt:Link template=\"styles\" encode_html=\"1\"$>\">\n    <!--[if lt IE 9]>\n    <link rel=\"stylesheet\" href=\"<$mt:Link template=\"styles_ie\" encode_html=\"1\"$>\">\n    <script src=\"<$mt:SupportDirectoryURL encode_html=\"1\"$>theme_static/rainier/js/html5shiv.js\"></script>\n    <![endif]-->\n    <mt:Assets tag=\"@SITE_FAVICON\" limit=\"1\"><link rel=\"shortcut icon\" href=\"<$mt:AssetURL encode_html=\"1\"$>\"></mt:Assets>\n    <link rel=\"start\" href=\"<$mt:BlogURL encode_html=\"1\"$>\">\n    <link rel=\"alternate\" type=\"application/atom+xml\" title=\"Recent Entries\" href=\"<$mt:Link template=\"feed_recent\"$>\" />\n    <$mt:CanonicalLink$>\n    <$mt:StatsSnippet$>\n",
              "linkToFile": "",
              "createdDate": "2015-05-22T13:19:53+09:00",
              "id": "33",
              "type": "custom",
              "modifiedDate": "2015-05-22T13:19:53+09:00",
              "customFields": []
            },
            {
              "outputFile": "mt-theme-scale2.js",
              "createdBy": {
                "userpicUrl": null,
                "id": "1",
                "displayName": "Yuji Takayama"
              },
              "name": "JavaScript - Theme",
              "updatable": true,
              "blog": {
                "id": "1"
              },
              "buildType": "Static",
              "templateType": "javascript_theme",
              "text": "$(function() {\n    $('<select />').appendTo('header [role=\"navigation\"]');\n\n    $('<option />', {\n        'value': '',\n        'text': 'Menu',\n        'selected': 'selected'\n    }).appendTo('header [role=\"navigation\"] > select');\n\n    $('header [role=\"navigation\"] a').each(function() {\n        var el = $(this);\n        $('<option />', {\n            'value': el.attr('href'),\n            'text': el.text()\n        }).appendTo('header [role=\"navigation\"] > select');\n    });\n\n    $('header [role=\"navigation\"] > select, .widget-archive-dropdown select').change(function() {\n        window.location = $(this).find('option:selected').val();\n    });\n});\n",
              "linkToFile": "",
              "type": "index",
              "id": "9",
              "createdDate": "2015-05-22T13:19:53+09:00",
              "modifiedDate": "2015-05-22T13:19:53+09:00",
              "customFields": []
            }
          ]
        }

+ Response 401 (application/json)

        {
          "error": {
            "message": "Unauthorized",
            "code": 401
          }
        }

+ Response 403 (application/json)

        {
          "error": {
            "message": "Do not have permission to retrieve the list of templates.",
            "code": "403"
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Site not found",
            "code": "404"
          }
        }

+ Response 500 (application/json)

        {
          "error": {
            "message": "Some error message is here",
            "code": "500"
          }
        }

## getTemplate [/sites/{site_id}/templates/{template_id}{?fields}]
### new in v2.0: Retrieve single template by its ID. [GET]

+ Authorization is required.

**Permissions**

+ edit_templates

+ Parameters
    + site_id (required, number) ... The site ID. If 0 specified, will load from global template in the system.
    + template_id (required, number) ... The template ID.
    + fields (optional, string) ... The field list to retrieve as part of the Templates resource. The list of field names should be separated by commas. If this parameter is not specified, all fields will be returned.

+ Response 200 (application/json)

        {
          "createdBy": {
            "userpicUrl": null,
            "id": "1",
            "displayName": "Yuji Takayama"
          },
          "name": "HTML Header",
          "updatable": true,
          "blog": {
            "id": "1"
          },
          "text": "    <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">\n    <link rel=\"stylesheet\" href=\"<$mt:Link template=\"styles\" encode_html=\"1\"$>\">\n    <!--[if lt IE 9]>\n    <link rel=\"stylesheet\" href=\"<$mt:Link template=\"styles_ie\" encode_html=\"1\"$>\">\n    <script src=\"<$mt:SupportDirectoryURL encode_html=\"1\"$>theme_static/rainier/js/html5shiv.js\"></script>\n    <![endif]-->\n    <mt:Assets tag=\"@SITE_FAVICON\" limit=\"1\"><link rel=\"shortcut icon\" href=\"<$mt:AssetURL encode_html=\"1\"$>\"></mt:Assets>\n    <link rel=\"start\" href=\"<$mt:BlogURL encode_html=\"1\"$>\">\n    <link rel=\"alternate\" type=\"application/atom+xml\" title=\"Recent Entries\" href=\"<$mt:Link template=\"feed_recent\"$>\" />\n    <$mt:CanonicalLink$>\n    <$mt:StatsSnippet$>\n",
          "linkToFile": "",
          "createdDate": "2015-05-22T13:19:53+09:00",
          "id": "33",
          "type": "custom",
          "modifiedDate": "2015-05-22T13:19:53+09:00",
          "customFields": []
        }

        + Response 401 (application/json)

                {
                  "error": {
                    "message": "Unauthorized",
                    "code": 401
                  }
                }

        + Response 403 (application/json)

                {
                  "error": {
                    "message": "Do not have permission to retrieve the list of templates.",
                    "code": "403"
                  }
                }

        + Response 404 (application/json)

                {
                  "error": {
                    "message": "Site not found / Template not found",
                    "code": "404"
                  }
                }

        + Response 500 (application/json)

                {
                  "error": {
                    "message": "Some error message is here",
                    "code": "500"
                  }
                }

## createTemplate [/sites/{site_id}/templates]
### new in v2.0: Create a new template. [POST]

+ Authorization is required.

**Permissions**

+ edit_templates

+ Parameters
    + site_id (required, number) ... The site ID. If 0 specified, will create into the global template in the system.

+ Request Templates resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            template={ "name": "New Template", "text": "some template code here", "linkToFile": "", "type": "custom" }

+ Response 200 (application/json)

        {
          "createdBy": {
            "userpicUrl": null,
            "id": "1",
            "displayName": "Yuji Takayama"
          },
          "name": "New Template",
          "updatable": true,
          "blog": {
            "id": "1"
          },
          "text": "some template code here",
          "linkToFile": "",
          "createdDate": "2015-06-29T16:47:09+09:00",
          "id": "152",
          "type": "custom",
          "modifiedDate": "2015-06-29T16:47:09+09:00",
          "customFields": []
        }

+ Response 401 (application/json)

        {
          "error": {
            "message": "Unauthorized",
            "code": 401
          }
        }

+ Response 403 (application/json)

        {
          "error": {
            "message": "Do not have permission to retrieve a template.",
            "code": "403"
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Site not found",
            "code": "404"
          }
        }

+ Response 500 (application/json)

        {
          "error": {
            "message": "Some error message is here",
            "code": "500"
          }
        }

## updateTemplate [/sites/{site_id}/templates/{template_id}]
### new in v2.0: Update a template. [PUT]

+ Authorization is required.
+ This method accepts PUT or POST with __method=PUT.

**Permissions**

+ edit_templates

+ Parameters
    + site_id (required, number) ... The site ID. If 0 specified, will update a global template in the system.
    + template_id (required, number) ... The template ID.

+ Request Templates resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            template={ "name": "new template name" }

+ Response 200 (application/json)

        {
          "createdBy": {
            "userpicUrl": null,
            "id": "1",
            "displayName": "Yuji Takayama"
          },
          "name": "New Template name",
          "updatable": true,
          "blog": {
            "id": "1"
          },
          "text": "some template code here",
          "linkToFile": "",
          "createdDate": "2015-06-29T16:47:09+09:00",
          "id": "152",
          "type": "custom",
          "modifiedDate": "2015-06-29T16:47:09+09:00",
          "customFields": []
        }

+ Response 401 (application/json)

        {
          "error": {
            "message": "Unauthorized",
            "code": 401
          }
        }

+ Response 403 (application/json)

        {
          "error": {
            "message": "Do not have permission to update a template.",
            "code": "403"
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Site not found / Template not found",
            "code": "404"
          }
        }

+ Response 405 (application/json)

        {
          "error": {
            "message": "Request method is not PUT or 'POST' with __PUT"
            "code": "405"
          }
        }

+ Response 500 (application/json)

        {
          "error": {
            "message": "Some error message is here",
            "code": "500"
          }
        }

## deleteTemplate [/sites/{site_id}/templates/{template_id}]
### new in v2.0: Delete a template. [DELETE]

+ Authorization is required.
+ This method accepts DELETE or POST with __method=DELETE.

**Permissions**

+ edit_templates

+ Parameters
    + site_id (required, number) ... The site ID. If 0 specified, delete from global template in the system.
    + template_id (required, number) ... The template ID.

+ Response 200 (application/json)

        {
          "createdBy": {
            "userpicUrl": null,
            "id": "1",
            "displayName": "Yuji Takayama"
          },
          "name": "New Template name",
          "updatable": true,
          "blog": {
            "id": "1"
          },
          "text": "some template code here",
          "linkToFile": "",
          "createdDate": "2015-06-29T16:47:09+09:00",
          "id": "152",
          "type": "custom",
          "modifiedDate": "2015-06-29T16:47:09+09:00",
          "customFields": []
        }

+ Response 401 (application/json)

        {
          "error": {
            "message": "Unauthorized",
            "code": 401
          }
        }

+ Response 403 (application/json)

        {
          "error": {
            "message": "Do not have permission to delete a template.",
            "code": "403"
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Site not found / Template not found",
            "code": "404"
          }
        }

+ Response 405 (application/json)

        {
          "error": {
            "message": "Request method is not PUT or 'POST' with __PUT"
            "code": "405"
          }
        }

+ Response 500 (application/json)

        {
          "error": {
            "message": "Some error message is here",
            "code": "500"
          }
        }

## publishTemplate [/sites/{site_id}/templates/{template_id}/publish]
### new in v2.0: Publish a template. [POST]

+ Authorization is required.
+ Only available for following templates
  + index
  + archive
  + individual
  + page
  + category

**Permissions**

+ rebuild

+ Parameters
    + site_id (required, number) ... The site ID
    + template_id (required, number) ... The template ID.

+ Response 200 (application/json)

        {
          "status" : "success"
        }

+ Response 400 (application/json)

        {
          "error" : {
            "message" : "Cannot publish [template type] template.",
            "code": "400"
          }
        }

+ Response 403 (application/json)

        {
          "error": {
            "message": "Do not have permission to publish a template.",
            "code": "403"
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Site not found / Template not found",
            "code": "404"
          }
        }

+ Response 500 (application/json)

        {
          "error": {
            "message": "Some error message is here",
            "code": "500"
          }
        }

## refreshTemplate [/sites/{site_id}/templates/{template_id}/refresh]
### new in v2.0: Reset template text to theme default or tempalte_set default. [POST]

+ Authorization is required.

**Permissions**

+ edit_templates

+ Parameters
    + site_id (required, number) ... The site ID. If 0 specified, refresh a global template in the system.
    + template_id (required, number) ... The template ID.

+ Response 200 (application/json)

        {
          "messages": [
            "「New Template name」を初期化します。"
          ],
          "status": "success"
        }

+ Response 403 (application/json)

        {
          "error": {
            "message": "Do not have permission to refresh a template.",
            "code": "403"
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Site not found / Template not found",
            "code": "404"
          }
        }

+ Response 500 (application/json)

        {
          "error": {
            "message": "Some error message is here",
            "code": "500"
          }
        }

## refreshTemplateForSite [/sites/{site_id}/refresh_templates{?refresh_type}]
### new in v2.0: Reset all templates in the site. [POST]

+ Authorization is required.

**Permissions**

+ edit_templates

+ Parameters
    + site_id (required, number) ... The site ID. If 0 specified, refresh a global template in the system.
    + refresh_type = `refresh` (optional, string) ... The type of refresh mode. <dl><dt>refresh</dt><dd>Refresh all templates. However, A template that created by user will never refreshed and never removed from a site.</dd><dt>clean</dt><dd>Refresh all templates. In this mode, A template that created by user will removed from a site.</dd></dl>

+ Response 200 (application/json)

        {
          "status": "success"
        }

+ Response 403 (application/json)

        {
          "error": {
            "message": "Do not have permission to refresh templates of the request site.",
            "code": "403"
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Site not found",
            "code": "404"
          }
        }

+ Response 500 (application/json)

        {
          "error": {
            "message": "Some error message is here",
            "code": "500"
          }
        }

## cloneTemplate [/sites/{site_id}/templates/{template_id}/clone]
### new in v2.0: Make a clone of a template. [POST]

+ Authorization is required.

**Permissions**

+ edit_templates

+ Parameters
    + site_id (required, number) ... The site ID. If 0 specified, refresh a global template in the system.
    + template_id (required, number) ... The template ID.

+ Response 200 (application/json)

        {
          "status": "success"
        }

+ Response 403 (application/json)

        {
          "error": {
            "message": "Do not have permission to clone a template.",
            "code": "403"
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Site not found / Template not found",
            "code": "404"
          }
        }

+ Response 500 (application/json)

        {
          "error": {
            "message": "Some error message is here",
            "code": "500"
          }
        }

## previewTemplate [/sites/{site_id}/templates/preview{?raw}]
### new in v2.0: Make a preview for a template. [POST]

+ Authorization is required.
+ **This endpoint is available in Movable Type 6.1.2 or later.**
+ `type` parameter in the Templates resource is required.

**Permissions**

+ edit_templates

+ Parameters
    + site_id (required, number) ... The site ID.
    + raw (optional, number) ...  If specify “1”, will be returned preview contents.

+ Request Templates resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            template={ "name": "New Template", "text": "some template code here", "type": "custom" }


+ Response 200 (application/json)

        {
          "status": "success",
          "preview": "http://example.com/index.html"
        }

+ Response 403 (application/json)

        {
          "error": {
            "message": "Do not have permission to get template preview.",
            "code": "403"
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Site not found",
            "code": "404"
          }
        }

+ Response 500 (application/json)

        {
          "error": {
            "message": "Some error message is here",
            "code": "500"
          }
        }

## previewTemplateById [/sites/{site_id}/templates/{template_id}/preview{?raw}]
### new in v2.0: Make a preview for a template with existing data. [POST]

+ Authorization is required.
+ **This endpoint is available in Movable Type 6.1.2 or later.**
+ Only available for following templates
  + index
  + archive
  + individual
  + page
  + category
  + ***template*** parameter is required. If you just want to get preview template from existing data, you should provide ***template*** parameter with empty json.

**Permissions**

+ edit_templates

+ Parameters
    + site_id (required, number) ... The site ID.
    + template_id (required, number) ... The template ID.
    + raw (optional, number) ...  If specify “1”, will be returned preview contents.

+ Request Templates resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            template={}


+ Response 200 (application/json)

        {
          "status": "success",
          "preview": "http://example.com/index.html"
        }

+ Response 403 (application/json)

        {
          "error": {
            "message": "Do not have permission to get template preview.",
            "code": "403"
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Site not found / Template not found",
            "code": "404"
          }
        }

+ Response 500 (application/json)

        {
          "error": {
            "message": "Some error message is here",
            "code": "500"
          }
        }



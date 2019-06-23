# Group Pages

This is the Pages resource.

Property Name | Type | Data Type | Database Column | Private | Read Only | Description | Version
------------ | ------------- | ------------ | ------------ | ------------- | ------------ | ------------ | ------------
allowComments | value | boolean | mt_entry.entry_allow_comments |  |  | <dl><dt>false</dt><dd>This page does not accepts comments. In the database, this value is 0.</dd><dt>true</dt><dd>This page accepts comments. In the database, this value is 1.</dd></dl> | v2
allowTrackbacks | value | boolean | mt_entry.entry_allow_pings |  |  | <dl><dt>false</dt><dd>This page does not accepts trackbacks. In the database, this value is 0.</dd><dt>true</dt><dd>This page accepts trackbacks. In the database, this value is 1.</dd></dl> | v2
assets | ARRAY | Assets | | | Y | The list of related assets for this page. | v2
author | Object | | | | Y | The author of this page. | v2
author.displayName | value | string | mt_author.nickame | | Y | The display name of this page creator. | v2
author.id | value | number | mt_entry.entry_author_id | Y | Y | The ID of this page creator. | v2
author.userpicUrl | value | string | | | Y | The URL of this page creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.| v2
basename | value | string | mt_entry.entry_basename | | | The basename for this page. | v2
blog | Object | | | | Y | The blog of this page. | v2
blog.id | value | number | mt_entry.entry_blog_id | | Y | The ID of the blog that contains this page. | v2
body | value | string | mt_entry.entry_text | | | The contents of this page that the text format is applied. [update in v2] if you want to get the raw contents, you should sent a "no_text_filter=1" parameter with authenticated request. | v2
folder | Object | Folder | | | | The container folder of this page. | v2
class | value | string | mt_entry.entry_class | | Y | The object class for this page. | v2
commentCount | value | number | mt_entry.entry_comment_count | | Y | The number of comments for this page. | v2
comments | ARRAY | Comments | | | Y | The list of comments for this page. The list is sorted by ID of the comment and The parent ID of the comment. | v2
createdDate | value | iso 8601 datetime | mt_entry.entry_created_on | | Y | The created time for this page. | v2
customFields | ARRAY | Object | | | | The list of customfields data for this page. | v2
customField.basename | value | string | mt_field.field_basename | | Y | The basename of this customfield. | v2
customField.value | value | string | | | | The value of this customfield. | v2
date | value | iso 8601 datetime | mt_entry.entry_authored_on | | | The published time for this page. | v2
excerpt | value | string | mt_entry.entry_excerpt | | | The excerpt value of this page if one is specified or, if not, an auto-generated excerpt from the page Body field followed by an ellipsis (“…”). If an excerpt is auto-generated also note that any HTML is stripped. The length of the auto-generated output of this tag can be set in the blog’s page Settings. | v2
format | value | string | mt_entry.entry_convert_breaks | Y | | The text format of this page. | v2
id | value | number | mt_entry.entry_id | | Y | The ID of this page. | v2
keywords | value | string | mt_entry.entry_keywords | | | The keywords text for this page. | v2
modifiedDate | value | iso 8601 datetime | mt_entry.entry_modified_on | | Y | The last modified time for this page. | v2
more | value | string | mt_entry.entry_text_more | | | The extended contents for this page. if you want to get the raw contents, you should sent a "no_text_filter=1" parameter with authenticated request. | v2
permalink | value | value | string | | Y | The parmalink URL for this page. | v2
pingsSentUrl | ARRAY | string | || Y | The list of TrackBack pings sent from this page. | v2
status | value | string | | | | <dl><dt>Draft</dt><dd>This page is saved as draft.<br>status is 1.</dd><dt>Publish</dt><dd>This page is published.<br>status is 2.</dd><dt>Review</dt><dd>This page is waiting for approval.<br>status is 3.</dd><dt>Future</dt><dd>This page is scheduled for future publishing.<br>status is 4.</dd><dt>Spam</dt><dd>This page is marked as Spam.<br>status is 5.</dd></dl> | v2
tags | ARRAY | string | | | | The list of page tags for this page. | v2
title | value | string | mt_entry.entry_title | | | The title of this page. | v2
trackbackCount | value | number | mt_entry.entry_comment_count | | | The number of received trackbacks for this page. | v2
trackbacks | ARRAY | Trackbacks | | | Y | The list of received trackbacks for this page. The list is sorted by the ID of trackback. | v2
updatable | value | boolean | | | Y | <dl><dt>true</dt><dd>The user who accessed can update this entry.</dd><dt>false</dt><dd>The user who accessed cannot update this page.</dd></dl> | v2

        {
          "excerpt" : "We are excited to announce that Six Apar...",
          "status" : "Publish",
          "date" : "2014-11-14T13:08:42¥u002b09:00",
          "updatable" : false,
          "author" : {
            "userpicUrl" : null,
            "displayName" : "Yuji Takayama"
          },
          "allowComments" : true,
          "comments" : [],
          "permalink" : "http://localhost/news/six-apart-acquires-topics-server-to-simplify-site-upgrades.html",
          "body" : "¥u003cp¥u003e¥u003cspan¥u003eWe are excited to announce that Six Apart has acquired Topics, a dynamic online publishing product. This offering will provide Six Apart customers with an easy and cost-effective way to adapt existing content to evolving digital platforms.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eThis new product will save Six Apart customers a significant amount of time and money by allowing users to upgrade their websites and applications without migrating from their current content management systems. Clients who need to scale large amounts of data or even revamp a website on an entirely new platform can now achieve these changes with minimal effort.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eSix Apart customers will benefit not only from saved time and money, but also from ease of use. Topics does not have a user interface, so there is no new software to learn. Instead, it exists as a middle layer between the data library and the published page - automatically gathering, organizing and redistributing data.¥u003c/span¥u003e¥u003c/p¥u003e",
          "keywords" : "",
          "allowTrackbacks" : false,
          "id" : 5,
          "trackbacks" : [],
          "modifiedDate" : "2014-11-14T13:17:52¥u002b09:00",
          "trackbackCount" : "0",
          "folder" : {
            "id" : 2,
            "parent" : 1,
            "label" : "news"
          },
          "blog" : {
            "id" : "1"
          },
          "commentCount" : "0",
          "tags" : [],
          "basename" : "six_apart_acquires_topics_server_to_simplify_site_upgrades",
          "assets" : [],
          "pingsSentUrl" : [],
          "title" : "Six Apart Acquires Topics Server to Simplify Site Upgrades",
          "class" : "entry",
          "createdDate" : "2014-11-14T13:17:52¥u002b09:00",
          "more" : "",
          "customFields" : [
            {
              "basename" : "place",
              "value" : "New York City"
            },
            {
              "basename" : "agenda",
              "value" : "Movable Type¥nTopics"
            }
          ]
        }

# Pages [/sites/{site_id}/pages/{page_id}]

## Retrieve a list of pages [GET /sites/{site_id}/pages{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,maxComments,maxTrackbacks,no_text_filter,dateField,dateFrom,dateTo}]
Retrieve a list of pages.

:::note
Authentication required if want to include unpublished pages.
:::

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of pages.
404 | Not Found | Site not found.

**Permissions**

+ manage_pages
    + for retrieve unpublished page

+ Parameters
    + site_id (required, number) ... The site ID.
    + search (optional, string) ... Search query.
    + searchFields = `title,body,more,keywords,excerpt,basename` (optional, string) ... The comma separated field name list to search.
    + limit = `10` (optional, number) ... Maximum number of pages to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `modified_on` (optional, string) ... The field name for sort. You can specify one of following values<ul><li>authored_on</li><li>title</li><li>created_on</li><li>modified_on</li></ul>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return pages in descending order.</dd><dt>ascend</dt><dd>Return pages in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Pages resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of pages to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of pages to exclude from result.
    + status (optional, string) ... Filter by container page's status. <dl><dt>Draft</dt><dd>status is 1.</dd><dt>Publish</dt><dd>status is 2.</dd><dt>Review</dt><dd>status is 3.</dd><dt>Future</dt><dd>status is 4.</dd><dt>Spam</dt><dd>status is 5.</dd></dl>
    + maxComments (optional, number) ... This is an optional parameter. Maximum number of pages to retrieve as part of the Pages resource. If this parameter is not supplied, no pages will be returned.
    + maxTrackbacks (optional, number) ... This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Pages resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter = `0` (optional, number) ... If you want to fetch the raw text, set to '1'. New in v2
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
            {
              "excerpt" : "We are excited to announce that Six Apar...",
              "status" : "Publish",
              "date" : "2014-11-14T13:08:42¥u002b09:00",
              "updatable" : false,
              "author" : {
                "userpicUrl" : null,
                "displayName" : "Yuji Takayama"
              },
              "allowComments" : true,
              "comments" : [],
              "permalink" : "http://localhost/news/six-apart-acquires-topics-server-to-simplify-site-upgrades.html",
              "body" : "¥u003cp¥u003e¥u003cspan¥u003eWe are excited to announce that Six Apart has acquired Topics, a dynamic online publishing product. This offering will provide Six Apart customers with an easy and cost-effective way to adapt existing content to evolving digital platforms.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eThis new product will save Six Apart customers a significant amount of time and money by allowing users to upgrade their websites and applications without migrating from their current content management systems. Clients who need to scale large amounts of data or even revamp a website on an entirely new platform can now achieve these changes with minimal effort.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eSix Apart customers will benefit not only from saved time and money, but also from ease of use. Topics does not have a user interface, so there is no new software to learn. Instead, it exists as a middle layer between the data library and the published page - automatically gathering, organizing and redistributing data.¥u003c/span¥u003e¥u003c/p¥u003e",
              "keywords" : "",
              "allowTrackbacks" : false,
              "id" : 5,
              "trackbacks" : [],
              "modifiedDate" : "2014-11-14T13:17:52¥u002b09:00",
              "trackbackCount" : "0",
              "folder" : {
                "id" : 2,
                "parent" : 1,
                "label" : "news"
              },
              "blog" : {
                "id" : "1"
              },
              "commentCount" : "0",
              "tags" : [],
              "basename" : "six_apart_acquires_topics_server_to_simplify_site_upgrades",
              "assets" : [],
              "pingsSentUrl" : [],
              "title" : "Six Apart Acquires Topics Server to Simplify Site Upgrades",
              "class" : "entry",
              "createdDate" : "2014-11-14T13:17:52¥u002b09:00",
              "more" : "",
              "customFields" : [
                {
                  "basename" : "place",
                  "value" : "New York City"
                },
                {
                  "basename" : "agenda",
                  "value" : "Movable Type¥nTopics"
                }
              ]
            }
          ]
        }

## Retrieve a list of pages by folder [GET /sites/{site_id}/folders/{folder_id}/pages{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,maxComments,maxTrackbacks,no_text_filter,dateField,dateFrom,dateTo}]
Retrieve a list of pages by folder.

:::note
Authentication required if want to include unpublished pages.
:::

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of pages.
404 | Not Found | Site or Folder not found.

**Permissions**

+ manage_pages
    + for retrieve unpublished page

+ Parameters
    + site_id (required, number) ... The site ID.
    + folder_id (required, number) ... The folder ID.
    + search (optional, string) ... Search query.
    + searchFields = `title,body,more,keywords,excerpt,basename` (optional, string) ... The comma separated field name list to search.
    + limit = `10` (optional, number) ... Maximum number of pages to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `modified_on` (optional, string) ... The field name for sort. You can specify one of following values<ul><li>authored_on</li><li>title</li><li>created_on</li><li>modified_on</li></ul>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return pages in descending order.</dd><dt>ascend</dt><dd>Return pages in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the  Pages resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of pages to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of pages to exclude from result.
    + status (optional, string) ... Filter by container page's status. <dl><dt>Draft</dt><dd>status is 1.</dd><dt>Publish</dt><dd>status is 2.</dd><dt>Review</dt><dd>status is 3.</dd><dt>Future</dt><dd>status is 4.</dd><dt>Spam</dt><dd>status is 5.</dd></dl>
    + maxComments (optional, number) ... This is an optional parameter. Maximum number of comments to retrieve as part of the Pages resource. If this parameter is not supplied, no comments will be returned.
    + maxTrackbacks (optional, number) ... This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Pages resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter = `0` (optional, number) ... If you want to fetch the raw text, set to '1'. New in v2
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
            {
              "excerpt" : "We are excited to announce that Six Apar...",
              "status" : "Publish",
              "date" : "2014-11-14T13:08:42¥u002b09:00",
              "updatable" : false,
              "author" : {
                "userpicUrl" : null,
                "displayName" : "Yuji Takayama"
              },
              "allowComments" : true,
              "comments" : [],
              "permalink" : "http://localhost/news/six-apart-acquires-topics-server-to-simplify-site-upgrades.html",
              "body" : "¥u003cp¥u003e¥u003cspan¥u003eWe are excited to announce that Six Apart has acquired Topics, a dynamic online publishing product. This offering will provide Six Apart customers with an easy and cost-effective way to adapt existing content to evolving digital platforms.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eThis new product will save Six Apart customers a significant amount of time and money by allowing users to upgrade their websites and applications without migrating from their current content management systems. Clients who need to scale large amounts of data or even revamp a website on an entirely new platform can now achieve these changes with minimal effort.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eSix Apart customers will benefit not only from saved time and money, but also from ease of use. Topics does not have a user interface, so there is no new software to learn. Instead, it exists as a middle layer between the data library and the published page - automatically gathering, organizing and redistributing data.¥u003c/span¥u003e¥u003c/p¥u003e",
              "keywords" : "",
              "allowTrackbacks" : false,
              "id" : 5,
              "trackbacks" : [],
              "modifiedDate" : "2014-11-14T13:17:52¥u002b09:00",
              "trackbackCount" : "0",
              "folder" : {
                "id" : 2,
                "parent" : 1,
                "label" : "news"
              },
              "blog" : {
                "id" : "1"
              },
              "commentCount" : "0",
              "tags" : [],
              "basename" : "six_apart_acquires_topics_server_to_simplify_site_upgrades",
              "assets" : [],
              "pingsSentUrl" : [],
              "title" : "Six Apart Acquires Topics Server to Simplify Site Upgrades",
              "class" : "entry",
              "createdDate" : "2014-11-14T13:17:52¥u002b09:00",
              "more" : "",
              "customFields" : [
                {
                  "basename" : "place",
                  "value" : "New York City"
                },
                {
                  "basename" : "agenda",
                  "value" : "Movable Type¥nTopics"
                }
              ]
            }
          ]
        }

## Retrieve a list of pages that related with asset [GET /sites/{site_id}/assets/{asset_id}/pages{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,maxComments,maxTrackbacks,no_text_filter,dateField,dateFrom,dateTo}]
Retrieve a list of pages that related with asset.

:::note
Authentication required if want to include unpublished pages.
:::

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of pages.
404 | Not Found | Site or Asset not found.

**Permissions**

+ manage_pages
    + for retrieve unpublished page

+ Parameters
    + site_id (required, number) ... The site ID.
    + asset_id (required, number) ... The asset ID.
    + search (optional, string) ... Search query.
    + searchFields = `title,body,more,keywords,excerpt,basename` (optional, string) ... The comma separated field name list to search.
    + limit = `10` (optional, number) ... Maximum number of pages to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `authored_on` (optional, string) ... The field name for sort. You can specify one of following values<ul><li>authored_on</li><li>title</li><li>created_on</li><li>modified_on</li></ul>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return pages in descending order.</dd><dt>ascend</dt><dd>Return pages in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Pages resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of pages to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of pages to exclude from result.
    + status (optional, string) ... Filter by container entry's status. <dl><dt>Draft</dt><dd>entry_status is 1.</dd><dt>Publish</dt><dd>entry_status is 2.</dd><dt>Review</dt><dd>entry_status is 3.</dd><dt>Future</dt><dd>entry_status is 4.</dd><dt>Spam</dt><dd>entry_status is 5.</dd></dl>
    + maxComments (optional, number) ... This is an optional parameter. Maximum number of pages to retrieve as part of the Pages resource. If this parameter is not supplied, no pages will be returned.
    + maxTrackbacks (optional, number) ... This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Pages resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter = `0` (optional, number) ... If you want to fetch the raw text, set to '1'. New in v2
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
            {
              "excerpt" : "We are excited to announce that Six Apar...",
              "status" : "Publish",
              "date" : "2014-11-14T13:08:42¥u002b09:00",
              "updatable" : false,
              "author" : {
                "userpicUrl" : null,
                "displayName" : "Yuji Takayama"
              },
              "allowComments" : true,
              "comments" : [],
              "permalink" : "http://localhost/blog/20141114-1/2014/11/six-apart-acquires-topics-server-to-simplify-site-upgrades.html",
              "body" : "¥u003cp¥u003e¥u003cspan¥u003eWe are excited to announce that Six Apart has acquired Topics, a dynamic online publishing product. This offering will provide Six Apart customers with an easy and cost-effective way to adapt existing content to evolving digital platforms.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eThis new product will save Six Apart customers a significant amount of time and money by allowing users to upgrade their websites and applications without migrating from their current content management systems. Clients who need to scale large amounts of data or even revamp a website on an entirely new platform can now achieve these changes with minimal effort.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eSix Apart customers will benefit not only from saved time and money, but also from ease of use. Topics does not have a user interface, so there is no new software to learn. Instead, it exists as a middle layer between the data library and the published page - automatically gathering, organizing and redistributing data.¥u003c/span¥u003e¥u003c/p¥u003e",
              "keywords" : "",
              "allowTrackbacks" : false,
              "id" : 5,
              "trackbacks" : [],
              "modifiedDate" : "2014-11-14T13:17:52¥u002b09:00",
              "trackbackCount" : "0",
              "folder" : {
                "id" : 2,
                "parent" : 1,
                "label" : "news"
              },
              "blog" : {
                "id" : "1"
              },
              "commentCount" : "0",
              "tags" : [],
              "basename" : "six_apart_acquires_topics_server_to_simplify_site_upgrades",
              "assets" : [],
              "pingsSentUrl" : [],
              "title" : "Six Apart Acquires Topics Server to Simplify Site Upgrades",
              "class" : "entry",
              "createdDate" : "2014-11-14T13:17:52¥u002b09:00",
              "more" : "",
              "customFields" : [
                {
                  "basename" : "place",
                  "value" : "New York City"
                },
                {
                  "basename" : "agenda",
                  "value" : "Movable Type¥nTopics"
                }
              ]
            }
          ]
        }

## Retrieve a list of pages that related with tag [GET /sites/{site_id}/tags/{tag_id}/pages{?search,searchFields,limit,offset,sortBy,sortOrder,fields,includeIds,excludeIds,status,maxComments,maxTrackbacks,no_text_filter,dateField,dateFrom,dateTo}]
Retrieve a list of pages that related with tag.

:::note
Authentication required if want to include unpublished pages.
:::

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of pages.
404 | Not Found | Site or Tag not found.

**Permissions**

+ manage_pages
    + for retrieve unpublished page

+ Parameters
    + site_id (required, number) ... The site ID.
    + tag_id (required, number) ... The tag ID.
    + search (optional, string) ... Search query.
    + searchFields = `title,body,more,keywords,excerpt,basename` (optional, string) ... The comma separated field name list to search.
    + limit = `10` (optional, number) ... Maximum number of pages to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `modified_on` (optional, string) ... The field name for sort. You can specify one of following values<ul><li>authored_on</li><li>title</li><li>created_on</li><li>modified_on</li></ul>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return pages in descending order.</dd><dt>ascend</dt><dd>Return pages in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Pages resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of pages to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of pages to exclude from result.
    + status (optional, string) ... Filter by container entry's status. <dl><dt>Draft</dt><dd>entry_status is 1.</dd><dt>Publish</dt><dd>entry_status is 2.</dd><dt>Review</dt><dd>entry_status is 3.</dd><dt>Future</dt><dd>entry_status is 4.</dd><dt>Spam</dt><dd>entry_status is 5.</dd></dl>
    + maxComments (optional, number) ... This is an optional parameter. Maximum number of pages to retrieve as part of the Pages resource. If this parameter is not supplied, no pages will be returned.
    + maxTrackbacks (optional, number) ... This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Pages resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter = `0` (optional, number) ... If you want to fetch the raw text, set to '1'.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
            {
              "excerpt" : "We are excited to announce that Six Apar...",
              "status" : "Publish",
              "date" : "2014-11-14T13:08:42¥u002b09:00",
              "updatable" : false,
              "author" : {
                "userpicUrl" : null,
                "displayName" : "Yuji Takayama"
              },
              "allowComments" : true,
              "comments" : [],
              "permalink" : "http://localhost/blog/20141114-1/2014/11/six-apart-acquires-topics-server-to-simplify-site-upgrades.html",
              "body" : "¥u003cp¥u003e¥u003cspan¥u003eWe are excited to announce that Six Apart has acquired Topics, a dynamic online publishing product. This offering will provide Six Apart customers with an easy and cost-effective way to adapt existing content to evolving digital platforms.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eThis new product will save Six Apart customers a significant amount of time and money by allowing users to upgrade their websites and applications without migrating from their current content management systems. Clients who need to scale large amounts of data or even revamp a website on an entirely new platform can now achieve these changes with minimal effort.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eSix Apart customers will benefit not only from saved time and money, but also from ease of use. Topics does not have a user interface, so there is no new software to learn. Instead, it exists as a middle layer between the data library and the published page - automatically gathering, organizing and redistributing data.¥u003c/span¥u003e¥u003c/p¥u003e",
              "keywords" : "",
              "allowTrackbacks" : false,
              "id" : 5,
              "trackbacks" : [],
              "modifiedDate" : "2014-11-14T13:17:52¥u002b09:00",
              "trackbackCount" : "0",
              "folder" : {
                "id" : 2,
                "parent" : 1,
                "label" : "news"
              },
              "blog" : {
                "id" : "1"
              },
              "commentCount" : "0",
              "tags" : [],
              "basename" : "six_apart_acquires_topics_server_to_simplify_site_upgrades",
              "assets" : [],
              "pingsSentUrl" : [],
              "title" : "Six Apart Acquires Topics Server to Simplify Site Upgrades",
              "class" : "entry",
              "createdDate" : "2014-11-14T13:17:52¥u002b09:00",
              "more" : "",
              "customFields" : [
                {
                  "basename" : "place",
                  "value" : "New York City"
                },
                {
                  "basename" : "agenda",
                  "value" : "Movable Type¥nTopics"
                }
              ]
            }
          ]
        }

### Create a new page [POST /sites/{site_id}/pages]
Create a new page.

:::note
Authentication required.
:::

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to create a new page.
404 | Not Found | Site not found.

**Permissions**

+ manage_post

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
page | Object | Yes | | Single Pages resource

+ Parameters
    + site_id (required, number) ... The site ID.

+ Request Pages resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

+ Response 200 (application/json)

        {
          "excerpt" : "We are excited to announce that Six Apar...",
          "status" : "Publish",
          "date" : "2014-11-14T13:08:42¥u002b09:00",
          "updatable" : false,
          "author" : {
            "userpicUrl" : null,
            "displayName" : "Yuji Takayama"
          },
          "allowComments" : true,
          "comments" : [],
          "permalink" : "http://localhost/blog/20141114-1/2014/11/six-apart-acquires-topics-server-to-simplify-site-upgrades.html",
          "body" : "¥u003cp¥u003e¥u003cspan¥u003eWe are excited to announce that Six Apart has acquired Topics, a dynamic online publishing product. This offering will provide Six Apart customers with an easy and cost-effective way to adapt existing content to evolving digital platforms.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eThis new product will save Six Apart customers a significant amount of time and money by allowing users to upgrade their websites and applications without migrating from their current content management systems. Clients who need to scale large amounts of data or even revamp a website on an entirely new platform can now achieve these changes with minimal effort.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eSix Apart customers will benefit not only from saved time and money, but also from ease of use. Topics does not have a user interface, so there is no new software to learn. Instead, it exists as a middle layer between the data library and the published page - automatically gathering, organizing and redistributing data.¥u003c/span¥u003e¥u003c/p¥u003e",
          "keywords" : "",
          "allowTrackbacks" : false,
          "id" : 5,
          "trackbacks" : [],
          "modifiedDate" : "2014-11-14T13:17:52¥u002b09:00",
          "trackbackCount" : "0",
          "folder" : {
            "id" : 2,
            "parent" : 1,
            "label" : "news"
          },
          "blog" : {
            "id" : "1"
          },
          "commentCount" : "0",
          "tags" : [],
          "basename" : "six_apart_acquires_topics_server_to_simplify_site_upgrades",
          "assets" : [],
          "pingsSentUrl" : [],
          "title" : "Six Apart Acquires Topics Server to Simplify Site Upgrades",
          "class" : "entry",
          "createdDate" : "2014-11-14T13:17:52¥u002b09:00",
          "more" : "",
          "customFields" : [
            {
              "basename" : "place",
              "value" : "New York City"
            },
            {
              "basename" : "agenda",
              "value" : "Movable Type¥nTopics"
            }
          ]
        }

### Retrieve a single page by its ID [GET /sites/{site_id}/pages/{page_id}{?fields}]
Retrieve a single page by its ID.

:::note
Authentication required if the page status is "unpublished".
:::

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the requested page.
404 | Not Found | Site or Page not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + page_id (required, number) ... The page ID.
    + fields (optional, string) ... The field list to retrieve as part of the Pages resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.

+ Response 200 (application/json)

        {
          "excerpt" : "We are excited to announce that Six Apar...",
          "status" : "Publish",
          "date" : "2014-11-14T13:08:42¥u002b09:00",
          "updatable" : false,
          "author" : {
            "userpicUrl" : null,
            "displayName" : "Yuji Takayama"
          },
          "allowComments" : true,
          "comments" : [],
          "permalink" : "http://localhost/blog/20141114-1/2014/11/six-apart-acquires-topics-server-to-simplify-site-upgrades.html",
          "body" : "¥u003cp¥u003e¥u003cspan¥u003eWe are excited to announce that Six Apart has acquired Topics, a dynamic online publishing product. This offering will provide Six Apart customers with an easy and cost-effective way to adapt existing content to evolving digital platforms.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eThis new product will save Six Apart customers a significant amount of time and money by allowing users to upgrade their websites and applications without migrating from their current content management systems. Clients who need to scale large amounts of data or even revamp a website on an entirely new platform can now achieve these changes with minimal effort.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eSix Apart customers will benefit not only from saved time and money, but also from ease of use. Topics does not have a user interface, so there is no new software to learn. Instead, it exists as a middle layer between the data library and the published page - automatically gathering, organizing and redistributing data.¥u003c/span¥u003e¥u003c/p¥u003e",
          "keywords" : "",
          "allowTrackbacks" : false,
          "id" : 5,
          "trackbacks" : [],
          "modifiedDate" : "2014-11-14T13:17:52¥u002b09:00",
          "trackbackCount" : "0",
          "folder" : {
            "id" : 2,
            "parent" : 1,
            "label" : "news"
          },
          "blog" : {
            "id" : "1"
          },
          "commentCount" : "0",
          "tags" : [],
          "basename" : "six_apart_acquires_topics_server_to_simplify_site_upgrades",
          "assets" : [],
          "pingsSentUrl" : [],
          "title" : "Six Apart Acquires Topics Server to Simplify Site Upgrades",
          "class" : "entry",
          "createdDate" : "2014-11-14T13:17:52¥u002b09:00",
          "more" : "",
          "customFields" : [
            {
              "basename" : "place",
              "value" : "New York City"
            },
            {
              "basename" : "agenda",
              "value" : "Movable Type¥nTopics"
            }
          ]
        }


## Update an existing page [PUT]
Update an existing page.

:::note
Authentication required.
:::

:::note
This method accepts PUT and POST with __method=PUT.
:::

** Update in v2.0 **

 + You can attach/detach folder and assets in the one request.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to update the speciied age.
404 | Not Found | Site or Pagenot found.

**Permissions**

+ manage_pages

+ Parameters
    + site_id (required, number) ... The site ID.
    + page_id (required, number) ... The page ID.

+ Request Entries resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            page={"excerpt" : "We are excited to announce that Six Apar...","status" : "Publish","allowComments" : true,"body" : "¥u003cp¥u003e¥u003cspan¥u003eWe are excited to announce that Six Apart has acquired Topics, a dynamic online publishing product. This offering will provide Six Apart customers with an easy and cost-effective way to adapt existing content to evolving digital platforms.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eThis new product will save Six Apart customers a significant amount of time and money by allowing users to upgrade their websites and applications without migrating from their current content management systems. Clients who need to scale large amounts of data or even revamp a website on an entirely new platform can now achieve these changes with minimal effort.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eSix Apart customers will benefit not only from saved time and money, but also from ease of use. Topics does not have a user interface, so there is no new software to learn. Instead, it exists as a middle layer between the data library and the published page - automatically gathering, organizing and redistributing data.¥u003c/span¥u003e¥u003c/p¥u003e","keywords" : "","allowTrackbacks" : false,"basename" : "six_apart_acquires_topics_server_to_simplify_site_upgrades","title" : "Six Apart Acquires Topics Server to Simplify Site Upgrades","more" : "","customFields" : [{"basename" : "place","value" : "New York City"},{"basename" : "agenda","value" : "Movable Type¥nTopics"}]}

+ Response 200 (application/json)

        {
          "excerpt" : "We are excited to announce that Six Apar...",
          "status" : "Publish",
          "date" : "2014-11-14T13:08:42¥u002b09:00",
          "updatable" : false,
          "author" : {
            "userpicUrl" : null,
            "displayName" : "Yuji Takayama"
          },
          "allowComments" : true,
          "comments" : [],
          "permalink" : "http://localhost/blog/20141114-1/2014/11/six-apart-acquires-topics-server-to-simplify-site-upgrades.html",
          "body" : "¥u003cp¥u003e¥u003cspan¥u003eWe are excited to announce that Six Apart has acquired Topics, a dynamic online publishing product. This offering will provide Six Apart customers with an easy and cost-effective way to adapt existing content to evolving digital platforms.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eThis new product will save Six Apart customers a significant amount of time and money by allowing users to upgrade their websites and applications without migrating from their current content management systems. Clients who need to scale large amounts of data or even revamp a website on an entirely new platform can now achieve these changes with minimal effort.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eSix Apart customers will benefit not only from saved time and money, but also from ease of use. Topics does not have a user interface, so there is no new software to learn. Instead, it exists as a middle layer between the data library and the published page - automatically gathering, organizing and redistributing data.¥u003c/span¥u003e¥u003c/p¥u003e",
          "keywords" : "",
          "allowTrackbacks" : false,
          "id" : 5,
          "trackbacks" : [],
          "modifiedDate" : "2014-11-14T13:17:52¥u002b09:00",
          "trackbackCount" : "0",
          "folder" : {
            "id" : 2,
            "parent" : 1,
            "label" : "news"
          },
          "blog" : {
            "id" : "1"
          },
          "commentCount" : "0",
          "tags" : [],
          "basename" : "six_apart_acquires_topics_server_to_simplify_site_upgrades",
          "assets" : [],
          "pingsSentUrl" : [],
          "title" : "Six Apart Acquires Topics Server to Simplify Site Upgrades",
          "class" : "entry",
          "createdDate" : "2014-11-14T13:17:52¥u002b09:00",
          "more" : "",
          "customFields" : [
            {
              "basename" : "place",
              "value" : "New York City"
            },
            {
              "basename" : "agenda",
              "value" : "Movable Type¥nTopics"
            }
          ]
        }

## Delete an existing page [DELETE]
Delete an existing page.

:::note
Authentication required.
:::

:::note
This method accepts PUT and POST with __method=DELETE.
:::

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to delete the speciied page.
404 | Not Found | Site or Page not found.

**Permissions**

+ edit_entry

+ Parameters
    + site_id (required, number) ... The site ID.
    + page_id (required, number) ... The page ID.

+ Response 200 (application/json)

        {
          "excerpt" : "We are excited to announce that Six Apar...",
          "status" : "Publish",
          "date" : "2014-11-14T13:08:42¥u002b09:00",
          "updatable" : false,
          "author" : {
            "userpicUrl" : null,
            "displayName" : "Yuji Takayama"
          },
          "allowComments" : true,
          "comments" : [],
          "permalink" : "http://localhost/blog/20141114-1/2014/11/six-apart-acquires-topics-server-to-simplify-site-upgrades.html",
          "body" : "¥u003cp¥u003e¥u003cspan¥u003eWe are excited to announce that Six Apart has acquired Topics, a dynamic online publishing product. This offering will provide Six Apart customers with an easy and cost-effective way to adapt existing content to evolving digital platforms.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eThis new product will save Six Apart customers a significant amount of time and money by allowing users to upgrade their websites and applications without migrating from their current content management systems. Clients who need to scale large amounts of data or even revamp a website on an entirely new platform can now achieve these changes with minimal effort.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eSix Apart customers will benefit not only from saved time and money, but also from ease of use. Topics does not have a user interface, so there is no new software to learn. Instead, it exists as a middle layer between the data library and the published page - automatically gathering, organizing and redistributing data.¥u003c/span¥u003e¥u003c/p¥u003e",
          "keywords" : "",
          "allowTrackbacks" : false,
          "id" : 5,
          "trackbacks" : [],
          "modifiedDate" : "2014-11-14T13:17:52¥u002b09:00",
          "trackbackCount" : "0",
          "folder" : {
            "id" : 2,
            "parent" : 1,
            "label" : "news"
          },
          "blog" : {
            "id" : "1"
          },
          "commentCount" : "0",
          "tags" : [],
          "basename" : "six_apart_acquires_topics_server_to_simplify_site_upgrades",
          "assets" : [],
          "pingsSentUrl" : [],
          "title" : "Six Apart Acquires Topics Server to Simplify Site Upgrades",
          "class" : "entry",
          "createdDate" : "2014-11-14T13:17:52¥u002b09:00",
          "more" : "",
          "customFields" : [
            {
              "basename" : "place",
              "value" : "New York City"
            },
            {
              "basename" : "agenda",
              "value" : "Movable Type¥nTopics"
            }
          ]
        }

# previewPage [/sites/{site_id}/pages/preview{?raw}]
## Make a preview by specified data [POST]
Make a preview by specified data.

:::note
Authentication required.
:::

+ **This endpoint is available in Movable Type 6.1.2 or later.**

**Permissions**

+ manage_pages

+ Parameters
    + site_id (required, number) ... The site ID.
    + raw (optional, number) ...  If specify “1”, will be returned preview contents.

+ Request Entries resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            page={ "title" : "My First Post", "body" : "This is my first post!" }


+ Response 200 (application/json)

        {
          "status": "success",
          "preview": "http://example.com/my-first-post.html"
        }

+ Response 403 (application/json)

        {
          "error": {
            "message": "Do not have permission to get page preview.",
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

## Make a preview for exising data [POST /sites/{site_id}/pages/{page_id}/preview{?raw}]
Make a preview for exising data.

:::note
+ Authentication required.
:::

+ **This endpoint is available in Movable Type 6.1.2 or later.**

:::warning
+ ***page*** parameter is required. If you just want to get preview page from existing data, you should provide ***page*** parameter with empty json.
:::

**Permissions**

+ manage_post

+ Parameters
    + site_id (required, number) ... The site ID.
    + page_id (required, number) ... The page ID.
    + raw (optional, number) ...  If specify “1”, will be returned preview contents.

+ Request Templates resource

    + Headers

            Content-Type: application/x-www-form-urlencoded

    + Body

            page={}


+ Response 200 (application/json)

        {
          "status": "success",
          "preview": "http://example.com/existing-page.html"
        }

+ Response 403 (application/json)

        {
          "error": {
            "message": "Do not have permission to get entry preview.",
            "code": "403"
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Site not found / Page not found",
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


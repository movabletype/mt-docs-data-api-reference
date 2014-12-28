# Group Entries


This is the Entries resource.

Property Name | Type | Data Type | Database Column | Private | Read Only | Description | Version
------------ | ------------- | ------------ | ------------ | ------------- | ------------ | ------------ | ------------
allowComments | value | boolean | mt_entry.entry_allow_comments |  |  | <dl><dt>false</dt><dd>This entry does not accepts comments. In the database, this value is 0.</dd><dt>true</dt><dd>This entry accepts comments. In the database, this value is 1.</dd></dl> | v1
allowTrackbacks | value | boolean | mt_entry.entry_allow_pings |  |  | <dl><dt>false</dt><dd>This entry does not accepts trackbacks. In the database, this value is 0.</dd><dt>true</dt><dd>This entry accepts trackbacks. In the database, this value is 1.</dd></dl> | v1
assets | ARRAY | Assets | | | Y | The list of related assets for this entry. | v1
author | Object | | | | Y | The author of this entry. | v1
author.displayName | value | string | mt_author.nickame | | Y | The display name of this entry creator. | v1
author.id | value | number | mt_entry.entry_author_id | Y | Y | The ID of this entry creator. | v1
author.userpicUrl | value | string | | | Y | The URL of this entry creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.| v1
basename | value | string | mt_entry.entry_basename | | | The basename for this entry. | v1
blog | Object | | | | Y | The blog of this entry. | v1
blog.id | value | number | mt_entry.entry_blog_id | | Y | The ID of the blog that contains this entry. | v1
body | value | string | mt_entry.entry_text | | | The contents of this entry that the text format is applied. [update in v2] if you want to get the raw contents, you should sent a "no_text_filter=1" parameter with authenticated request. | v1
categories | ARRAY | Categories | | | | A list of categories associated with the entry. The first element of the array is the primary category. OTHER categories are sorted by label category. [Update in v2] The value of this property was changed from "category label" to "Categories object". | v1
class | value | string | mt_entry.entry_class | | Y | The object class for this entry. | v1
commentCount | value | number | mt_entry.entry_comment_count | | Y | The number of comments for this entry. | v1
comments | ARRAY | Comments | | | Y | The list of comments for this entry. The list is sorted by ID of the comment and The parent ID of the comment. | v1
createdDate | value | iso 8601 datetime | mt_entry.entry_created_on | | Y | The created time for this entry. | v1
customFields | ARRAY | Object | | | | The list of customfields data for this entry. | v1
customField.basename | value | string | mt_field.field_basename | | Y | The basename of this customfield. | v1
customField.value | value | string | | | | The value of this customfield. | v1
date | value | iso 8601 datetime | mt_entry.entry_authored_on | | | The published time for this entry. | v1
excerpt | value | string | mt_entry.entry_excerpt | | | The excerpt value of this entry if one is specified or, if not, an auto-generated excerpt from the Entry Body field followed by an ellipsis (“…”). If an excerpt is auto-generated also note that any HTML is stripped. The length of the auto-generated output of this tag can be set in the blog’s Entry Settings. | v1
format | value | string | mt_entry.entry_convert_breaks | Y | | The text format of this entry. | v2
id | value | number | mt_entry.entry_id | | Y | The ID of this entry. | v1
keywords | value | string | mt_entry.entry_keywords | | | The keywords text for this entry. | v1
modifiedDate | value | iso 8601 datetime | mt_entry.entry_modified_on | | Y | The last modified time for this entry. | v1
more | value | string | mt_entry.entry_text_more | | | The extended contents for this entry.  [update in v2] if you want to get the raw contents, you should sent a "no_text_filter=1" parameter with authenticated request. | v1
permalink | value | value | string | | Y | The parmalink URL for this entry. | v1
pingsSentUrl | ARRAY | string | || Y | The list of TrackBack pings sent from this entry. | v1
status | value | string | | | | <dl><dt>Draft</dt><dd>This entry is saved as draft.<br>entry_status is 1.</dd><dt>Publish</dt><dd>This entry is published.<br>entry_status is 2.</dd><dt>Review</dt><dd>This entry is waiting for approval.<br>entry_status is 3.</dd><dt>Future</dt><dd>This entry is scheduled for future publishing.<br>entry_status is 4.</dd><dt>Spam</dt><dd>This entry is marked as Spam.<br>entry_status is 5.</dd></dl> | v1
tags | ARRAY | string | | | | The list of entry tags for this entry. | v1
title | value | string | mt_entry.entry_title | | | The title of this entry. | v1
trackbackCount | value | number | mt_entry.entry_comment_count | | | The number of received trackbacks for this entry. | v1
trackbacks | ARRAY | Trackbacks | | | Y | The list of received trackbacks for this entry. The list is sorted by the ID of trackback. | v1
updatable | value | boolean | | | Y | <dl><dt>true</dt><dd>The user who accessed can update this entry.</dd><dt>false</dt><dd>The user who accessed cannot update this entry.</dd></dl> | v1

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
          "categories" : [],
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

## listEntries [/sites/{site_id}/entries(?search, searchFields, limit, offset, sortBy, sortOrder, fields, includeIds, excludeIds, status, maxComments, maxTrackbacks, no_text_filter)]

### Retrieve a list of entries in the specified site. [GET]

+ Authorization is required if want to include unpublished entries.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of entries.
404 | Not Found | Site not found.

**Permissions**

+ edit_entry
    + for retrieve unpublished entry

+ Parameters
    + site_id (required, number) ... The site ID.
    + search (optional, string) ... Search query.
    + searchFields = `title,body,more,keywords,excerpt,basename` (optional, string) ... The comma separated field name list to search.
    + limit = `10` (optional, number) ... Maximum number of entries to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `authored_on` (optional, string) ... The field name for sort. You can specify one of following values<ul><li>authored_on</li><li>title</li><li>created_on</li><li>modified_on</li></ul>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return entries in descending order.</dd><dt>ascend</dt><dd>Return entries in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Entries resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of entries to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of entries to exclude from result.
    + status (optional, string) ... Filter by container entry's status. <dl><dt>Draft</dt><dd>entry_status is 1.</dd><dt>Publish</dt><dd>entry_status is 2.</dd><dt>Review</dt><dd>entry_status is 3.</dd><dt>Future</dt><dd>entry_status is 4.</dd><dt>Spam</dt><dd>entry_status is 5.</dd></dl>
    + maxComments (optional, number) ... This is an optional parameter. Maximum number of comments to retrieve as part of the Entries resource. If this parameter is not supplied, no comments will be returned.
    + maxTrackbacks (optional, number) ... This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Entries resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter = `0` (optional, number) ... If you want to fetch the raw text, set to '1'. New in v2

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
              "categories" : [],
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

## listEntriesForCategory [/sites/{site_id}/categories/{category_id}/entries(?search, searchFields, limit, offset, sortBy, sortOrder, fields, includeIds, excludeIds, status, maxComments, maxTrackbacks, no_text_filter)]

### New in v2.0: Retrieve a list of entries by specific category. [GET]

+ Authorization is required if want to include unpublished entries.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of entries.
404 | Not Found | Site or Category not found.

**Permissions**

+ edit_entry
    + for retrieve unpublished entry

+ Parameters
    + site_id (required, number) ... The site ID.
    + category_id (required, number) ... The category ID.
    + search (optional, string) ... Search query.
    + searchFields = `title,body,more,keywords,excerpt,basename` (optional, string) ... The comma separated field name list to search.
    + limit = `10` (optional, number) ... Maximum number of entries to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `authored_on` (optional, string) ... The field name for sort. You can specify one of following values<ul><li>authored_on</li><li>title</li><li>created_on</li><li>modified_on</li></ul>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return entries in descending order.</dd><dt>ascend</dt><dd>Return entries in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Entries resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of entries to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of entries to exclude from result.
    + status (optional, string) ... Filter by container entry's status. <dl><dt>Draft</dt><dd>entry_status is 1.</dd><dt>Publish</dt><dd>entry_status is 2.</dd><dt>Review</dt><dd>entry_status is 3.</dd><dt>Future</dt><dd>entry_status is 4.</dd><dt>Spam</dt><dd>entry_status is 5.</dd></dl>
    + maxComments (optional, number) ... This is an optional parameter. Maximum number of comments to retrieve as part of the Entries resource. If this parameter is not supplied, no comments will be returned.
    + maxTrackbacks (optional, number) ... This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Entries resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter = `0` (optional, number) ... If you want to fetch the raw text, set to '1'. New in v2

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
              "categories" : [],
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

## listEntriesForAsset [/sites/{site_id}/assets/{asset_id}/entries(?search, searchFields, limit, offset, sortBy, sortOrder, fields, includeIds, excludeIds, status, maxComments, maxTrackbacks, no_text_filter)]

### New in v2.0: Retrieve a list of entries that related with specific asset. [GET]

+ Authorization is required if want to include unpublished entries.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of entries.
404 | Not Found | Site or Asset not found.

**Permissions**

+ edit_entry
    + for retrieve unpublished entry

+ Parameters
    + site_id (required, number) ... The site ID.
    + asset_id (required, number) ... The asset ID.
    + search (optional, string) ... Search query.
    + searchFields = `title,body,more,keywords,excerpt,basename` (optional, string) ... The comma separated field name list to search.
    + limit = `10` (optional, number) ... Maximum number of entries to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `authored_on` (optional, string) ... The field name for sort. You can specify one of following values<ul><li>authored_on</li><li>title</li><li>created_on</li><li>modified_on</li></ul>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return entries in descending order.</dd><dt>ascend</dt><dd>Return entries in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Entries resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of entries to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of entries to exclude from result.
    + status (optional, string) ... Filter by container entry's status. <dl><dt>Draft</dt><dd>entry_status is 1.</dd><dt>Publish</dt><dd>entry_status is 2.</dd><dt>Review</dt><dd>entry_status is 3.</dd><dt>Future</dt><dd>entry_status is 4.</dd><dt>Spam</dt><dd>entry_status is 5.</dd></dl>
    + maxComments (optional, number) ... This is an optional parameter. Maximum number of comments to retrieve as part of the Entries resource. If this parameter is not supplied, no comments will be returned.
    + maxTrackbacks (optional, number) ... This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Entries resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter = `0` (optional, number) ... If you want to fetch the raw text, set to '1'. New in v2

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
              "categories" : [],
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

## listEntriesForSiteAndTag [/sites/{site_id}/tags/{tag_id}/entries(?search, searchFields, limit, offset, sortBy, sortOrder, fields, includeIds, excludeIds, status, status, maxComments, maxTrackbacks, no_text_filter)]

### New in v2.0: Retrieve a list of entries that related with specific tag. [GET]

+ Authorization is required if want to include unpublished entries.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of entries.
404 | Not Found | Site or Tag not found.

**Permissions**

+ edit_entry
    + for retrieve unpublished entry

+ Parameters
    + site_id (required, number) ... The site ID.
    + tag_id (required, number) ... The tag ID.
    + search (optional, string) ... Search query.
    + searchFields = `title,body,more,keywords,excerpt,basename` (optional, string) ... The comma separated field name list to search.
    + limit = `10` (optional, number) ... Maximum number of entries to retrieve.
    + offset = `0` (optional, number) ... 0-indexed offset.
    + sortBy = `authored_on` (optional, string) ... The field name for sort. You can specify one of following values<ul><li>authored_on</li><li>title</li><li>created_on</li><li>modified_on</li></ul>
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return entries in descending order.</dd><dt>ascend</dt><dd>Return entries in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Entries resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of entries to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of entries to exclude from result.
    + status (optional, string) ... Filter by container entry's status. <dl><dt>Draft</dt><dd>entry_status is 1.</dd><dt>Publish</dt><dd>entry_status is 2.</dd><dt>Review</dt><dd>entry_status is 3.</dd><dt>Future</dt><dd>entry_status is 4.</dd><dt>Spam</dt><dd>entry_status is 5.</dd></dl>
    + maxComments (optional, number) ... This is an optional parameter. Maximum number of comments to retrieve as part of the Entries resource. If this parameter is not supplied, no comments will be returned.
    + maxTrackbacks (optional, number) ... This is an optional parameter. Maximum number of received trackbacks to retrieve as part of the Entries resource. If this parameter is not supplied, no trackbacks will be returned.
    + no_text_filter = `0` (optional, number) ... If you want to fetch the raw text, set to '1'. New in v2

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
              "categories" : [],
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

## createEntry [/sites/{site_id}/entries]

### Create a new entry. [POST]

+ Authorization is required.

**Update in v2.0**
 
 + You can attach categories and assets in the one request.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to create a new entry.
404 | Not Found | Site not found.

**Permissions**

+ create_post

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
entry | Object | Yes | | Single Entries resource

+ Parameters
    + site_id (required, number) ... The site ID.

+ Request Entries resource

    + Headers
    
            Content-Type: application/x-www-form-urlencoded

    + Body
    
            entry={"excerpt" : "We are excited to announce that Six Apar...","status" : "Publish","allowComments" : true,"body" : "¥u003cp¥u003e¥u003cspan¥u003eWe are excited to announce that Six Apart has acquired Topics, a dynamic online publishing product. This offering will provide Six Apart customers with an easy and cost-effective way to adapt existing content to evolving digital platforms.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eThis new product will save Six Apart customers a significant amount of time and money by allowing users to upgrade their websites and applications without migrating from their current content management systems. Clients who need to scale large amounts of data or even revamp a website on an entirely new platform can now achieve these changes with minimal effort.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eSix Apart customers will benefit not only from saved time and money, but also from ease of use. Topics does not have a user interface, so there is no new software to learn. Instead, it exists as a middle layer between the data library and the published page - automatically gathering, organizing and redistributing data.¥u003c/span¥u003e¥u003c/p¥u003e","keywords" : "","allowTrackbacks" : false,"basename" : "six_apart_acquires_topics_server_to_simplify_site_upgrades","title" : "Six Apart Acquires Topics Server to Simplify Site Upgrades","more" : "","customFields" : [{"basename" : "place","value" : "New York City"},{"basename" : "agenda","value" : "Movable Type¥nTopics"}]}

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
          "categories" : [],
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

## getEntry [/sites/{site_id}/entries/{entry_id}(?fields)]

### Retrieve a single entry by its ID. [GET]

+ Authorization is required if the entry status is "unpublished". If the entry status is "published", then this method can be called without authorization.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the requested entry.
404 | Not Found | Site or Entry not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + entry_id (required, number) ... The entry ID.
    + fields (optional, string) ... The field list to retrieve as part of the Entries resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.

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
          "categories" : [],
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


## updateEntry and deleteEntry [/sites/{site_id}/entries/{entry_id}]

### Update an existing entry. [PUT]

+ Authorization is required.
+ This method accepts PUT and POST with __method=PUT.

**Update in v2.0**
 
 + You can attach/detach categories and assets in the one request.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to update the speciied entry.
404 | Not Found | Site or Entry not found.

**Permissions**

+ edit_entry
    + for retrieve unpublished entry

+ Parameters
    + site_id (required, number) ... The site ID.
    + entry_id (required, number) ... The entry ID.

+ Request Entries resource

    + Headers
    
            Content-Type: application/x-www-form-urlencoded

    + Body
    
            entry={"excerpt" : "We are excited to announce that Six Apar...","status" : "Publish","allowComments" : true,"body" : "¥u003cp¥u003e¥u003cspan¥u003eWe are excited to announce that Six Apart has acquired Topics, a dynamic online publishing product. This offering will provide Six Apart customers with an easy and cost-effective way to adapt existing content to evolving digital platforms.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eThis new product will save Six Apart customers a significant amount of time and money by allowing users to upgrade their websites and applications without migrating from their current content management systems. Clients who need to scale large amounts of data or even revamp a website on an entirely new platform can now achieve these changes with minimal effort.¥u003c/span¥u003e¥u003c/p¥u003e¥n¥u003cp¥u003e¥u003cspan¥u003eSix Apart customers will benefit not only from saved time and money, but also from ease of use. Topics does not have a user interface, so there is no new software to learn. Instead, it exists as a middle layer between the data library and the published page - automatically gathering, organizing and redistributing data.¥u003c/span¥u003e¥u003c/p¥u003e","keywords" : "","allowTrackbacks" : false,"basename" : "six_apart_acquires_topics_server_to_simplify_site_upgrades","title" : "Six Apart Acquires Topics Server to Simplify Site Upgrades","more" : "","customFields" : [{"basename" : "place","value" : "New York City"},{"basename" : "agenda","value" : "Movable Type¥nTopics"}]}

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
          "categories" : [],
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

### Delete an existing entry. [DELETE]

+ Authorization is required.
This method accepts PUT and POST with __method=DELETE.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to delete the speciied entry.
404 | Not Found | Site or Entry not found.

**Permissions**

+ edit_entry
    + for retrieve unpublished entry

+ Parameters
    + site_id (required, number) ... The site ID.
    + entry_id (required, number) ... The entry ID.

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
          "categories" : [],
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


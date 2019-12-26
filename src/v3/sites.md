# Group Sites

This is the Sites resource.

Property Name | Type | Data Type | Database Column | Private | Read Only | Description | Version
------------ | ------------- | ------------ | ------------ | ------------- | ------------ | ------------ | ------------
allowCommenterRegist | value | boolean | mt_blog.blog_allow_commenter_regist | Y | |<dl><dt>true</dt><dd>Allow visitors to register as members of this website using one of the Authentication Methods selected below.</dd><dt>false</dt><dd>Not allowed.<dd></dl> | v2
allowCommentHtml | value | boolean | mt_blog.blog_allow_comment_html | Y | | <dl><dt>true</dt><dd>Allow commenters to include a limited set of HTML tags in their comments.</dd><dt>false</dt><dd>All HTML will be stripped out.</dd></dl> | v2
allowComments | value | boolean | mt_blog.blog_allow_reg_comments<br>mt_blog.blog_allow_unreg_comments | Y | | <dl><dt>true</dt><dd>Accept comments.</dd><dt>false</dt><dd>Do not accept comments.</dd></dl> | v2
allowCommentsDefault | value | boolean | mt_blog.blog_allow_comments_default | Y | | The state of the comment acceptance of default in this site. <dl><dt>true</dt><dd>Comments are accepted.</dd><dt>false</dt><dd>Comments are not accepted.</dd></dl> | v2
allowPings | value | boolean | mt_blog.blog_allow_pings | Y | - | <dl><dt>true</dt><dd>Accept TrackBacks from any source.</dd><dt>false</dt><dd>Do not accept.</dd></dl> | v2
allowPingsDefault | value | boolean | mt_blog.blog_allow_pings_default | Y | | The state of the comment acceptance of default in this site. Available value is follows. <dl><dt>true</dt><dd>Trackbacks are accepted.</dd><dt>false</dt><dd>Trackbacks are not accepted.</dd></dl> | v2
allowToChangeAtUpload | value | boolean | mt_blog.blog_allow_to_change_at_upload | Y | | <dl><dt>true</dt><dd>Allow user to change the upload destination when upload a file.</dd><dt>false</dt><dd>Not allowed.<dd></dl> | v3.01
allowUnregComments | value | boolean | mt_blog.blog_allow_unreg_comments | Y | | <dl><dt>true</dt><dd>Allow comments from anonymous or unauthenticated users.</dd><dt>false</dt><dd>Not allowed.</dd></dl> | v2
archivePath | value | string | mt_blog.blog_archive_path | Y | | The archive path for this site. This property only accepts absolute path. | v2
archiveTypePreferred | value | string | mt_blog.blog_archive_type_preferred | Y | | The preferred archive type for this site. | v2
archiveUrl | value | string | mt_blog.blog_archive_url | | | The archive url of this site. [Update in v2] This property was changed to updatable. | v1
autodiscoverLinks | value | boolean | mt_blog.blog_autodiscovery_links | Y | | <dl><dt>true</dt><dd>Enable External TrackBack Auto-Discovery.</dd><dt>false</dt><dd>Disable.</dd></dl> | v2
autolinkUrls | value | boolean | mt_blog.blog_autolink_urls | Y | | <dl><dt>true</dt><dd>Transform URLs in comment text into HTML links</dd><dt>false</dt><dd>Do not transform.</dd></dl> | v2
autoRenameNonAscii | value | boolean | mt_blog_meta.auto_rename_non_ascii | Y | | <dl><dt>true</dt><dd>Uploded file name  will be automatically changed to randam filename if uploaded filename contains non-ascii character.</dd><dt>false</dt><dd>File name is not changed.</dd></dl> | v3.01
basenameLimit | value | number | mt_blog.blog_basename_limit | Y | | The maximum length of basename. | v2
ccLicenseImage | value | string | mt_blog.blog_cc_license | - | Y | The URL for the Creative Commons License image for this site. | v2
ccLicenseUrl | value | string | mt_blog.blog_cc_license | - | Y | The URL for the Creative Commons License url for this site. | v2
class | value | string | mt_blog.blog_class | Y | | The object class for this site. | v1
commenterAuthenticators | ARRAY | string | mt_blog_meta.commenter_authenticators | Y | | Array of commenter authenticators for this site. | v2
convertParasComments | value | string | mt_blog.blog_convert_paras_comments | Y | | The text formatting of this site's comment. | v2
contentCss | value | string | mt_blog.blog_content_css | Y | | The CSS applying to WYSIWYG editor of this site. | v2
convertParas | value | string | mt_blog.blog_convert_paras | Y | | The default text formatting in this site. Available value in default is follows.<dl><dt>0</dt><dd>The default text formatting is 'None'</dd><dt>__default__</dt><dd>The default text formatting is 'Convert Line Breaks'</dd><dt>markdown</dt><dd>The default text formatting is 'Markdown'</dd><dt>markdown_with_smartypants</dt><dd>The default text formatting is 'Markdown With SmartyPants'</dd><dt>richtext</dt><dd>The default text formatting is 'Rich Text'</dd><dt>textile_2</dt><dd>The default text formatting is 'Textile 2'</dd></dl> | v2
createdBy | Object | - | | | Y | The created user of this website. | v2
createdBy.id | value | number | mt_blog.blog_created_by | Y | Y | The ID of created user. | v2
createdBy.displayName | value | string | | | Y | The display name of created user. | v2
createdBy.userpicUrl | value | string | | | Y | The URL of created user's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. | v2
createdDate | value | iso 8601 datetime | mt_blog.blog_created_on | | Y | The created time for this website. | v2
customDynamicTemplates | value | string | mt_blog.blog_custom_dynamic_templates | Y | | Publishing profile for this site. Available value is follows. <dl><dt>none</dt><dd>Immediately publish all index templates and archive templates statically.</dd><dt>all</dt><dd>Publish all index templates and archive templates dynamically.</dd><dt>archives</dt><dd>Publish all archive templates dynamically. Immediately publish all index templates statically.</dd><dt>async_all</dt><dd>All index templates and archive templates published statically via Publish Que.</dd><dt>async_partial</dt><dd>mmediately publish Main Index template, Page archives statically. Use Publish Queue to publish all other index templates and archive templates statically.</dd></dl> | v2
daysOrPosts | value | string | mt_blog.blog_days_on_index<br/>mt_blog.blog_entries_on_index | Y | | The type of listing default. Available value is follows. <dl><dt>days</dt><dd>Listing entries that written in the past N days. N is a value of listOnIndex.</dd><dt>posts</dt><dd>Listing most recent N entries. N is a value of listOnIndex.</dd></dl> | v2
dateLanguage | value | string | mt_blog.blog_date_language | - | - | The date locale settings for this site. Available valus is follow. <dl><dt>cz</dt><dd>Czech</dd><dt>dk</dt><dd>Danish</dd><dt>nl</dt><dd>Dutch</dd><dt>en</dt><dd>English</dd><dt>et</dt><dd>Estonian</dd><dt>fr</dt><dd>French</dd><dt>de</dt><dd>German</dd><dt>is</dt><dd>Icelandic</dd><dt>it</dt><dd>Italian</dd><dt>ja</dt><dd>Japanese</dd><dt>no</dt><dd>Norwegian</dd><dt>pl</dt><dd>Polish</dd><dt>pt</dt><dd>Portuguese</dd><dt>sk</dt><dd>Slovak</dd><dt>si</dt><dd>Slovenian</dd><dt>es</dt><dd>Spanish</dd><dt>fi</dt><dd>Suomi</dd><dt>se</dt><dd>Swedish</dd></dl> | v2
description | value | string | mt_blog.blog_description | | | The description of this site. [Update in v2] This property was changed to updatable. | v1
dynamicCache | value | boolean | | Y | |Cannot set this property when dynamic templates does not exist. <dl><dt>true</dt><dd>Dynamic cache for dynamic publishing is enabled.</dd><dt>false</dt><dd>Dynamic cache for dynamic publishing is disabled.</dd></dl> | v2
dynamicConditional | value | boolean | | Y | | Cannot set this property when dynamic templates does not exist. <dl><dt>true</dt><dd>Dynamic conditional retrieval of dynamic publishing is enabled. </dd><dt>false</dt><dd>Dynamic conditional retrieval of dynamic publishing is disabled.</dd></dl> | v2
entryCustomPrefs | ARRAY | string | | Y | Y | Default displayed fields of this site's entry. Available value is follows.<dl><dt>title</dt><dd>Title field</dd><dt>text</dt><dd>Body and extended field</dd><dt>category</dt><dd>Category list</dd><dt>excerpt</dt><dd>Excerpt field</dd><dt>keywords</dt><dd>Keyword field</dd><dt>tags</dt><dd>Tags field</dd><dt>feedback</dt><dd>Comment and trackback setting field</dd><dt>assets</dt><dd>Entry assets list</dd><dt>customfield_&lt;basename&gt;</dt><dd>Each custom Fields</dd></dl> | v2
emailNewComments | value | number | mt_blog.blog_email_new_comments | Y | | Email notification when posting comment to this site.<dl><dt>0</dt><dd>Off.</dd><dt>1</dt><dd>On.</dd><dt>2</dt><dd>Only when attension is required.</dd></dl> | v2
emailNewPings | value | number | mt_blog.blog_email_new_pings | Y | | "Email notification setting when accepting trackback to this site. <dl><dt>0</dt><dd>Off.</dd><dt>1</dt><dd>On.</dd><dt>2</dt><dd>Only when attention is required.</dd></dl> | v2
extraPath | value | string | mt_blog_meta.blog_extra_path | Y | | The raw data of extra path for default upload destination. If extra path is not configured, this value is a blank string.| v3.01
fileExtension | value | string | mt_blog.blog_file_extension | Y | | The file extension for this site. | v2
followAuthLinks | value | boolean | mt_blog_meta.follow_auth_links | Y | | <dl><dt>true</dt><dd>Do not add the 'nofollow' attribute when a comment is submitted by a trusted commenter.</dd><dt>false</dt><dd>Add the 'nofollow' attribute .</dd></dl> | v2
host | value | string | mt_blog.blog_site_url | - | Y | The host name of this site. | v2
id | value | number | mt_blog.blog_id | | Y | The ID of this site. | v1
includeCache | value | boolean | mt_blog_meta:include_cache | Y | | <dl><dt>true</dt><dd>Module cache is enabled.</dd><dt>false</dt><dd>Module cache is disabled.</dd></dl> | v2
includeSystem | value | string | mt_blog_meta:include_system | Y | | <dl><dt>'' (empty string)</dt><dd>Server Side Includes is disabled.</dd><dt>php</dt><dd>Server Side Include is enabled with PHP.</dd><dt>shtml</dt><dd>Server Side Include is enabled with Apache SSI.</dd><dt>asp</dt><dd>Server Side Include is enabled with ASP.</dd><dt>jsp</dt><dd>Server Side Include is enabled with JSP.</dd></dl> | v2
language | value | string | mt_blog.blog_language | | | The language for this site. Available value is follows. <dl><dt>de</dt><dd>German</dd><dt>en</dt><dd>English</dd><dt>es</dt><dd>Spanish</dd><dt>fl</dt><dd>French</dd><dt>nl</dt><dd>Dutch</dd><dt>ja</dt><dd>Japanese</dd></dl> | v2
internalAutodiscovery | value | boolean | mt_blog.blog_internal_autodiscovery | Y | - |  <dl><dt>true</dt><dd>Enable Internal TrackBack Auto-Discovery</dd><dt>false</dt><dd>Disable.</dd></dl> | v2
junkFolderExpiry | value | number | mt_blog.blog_junk_folder_expiry | Y | | The period for deleting spam comments and trackbacks. | v2
junkScoreThreshold | value | number | mt_blog.blog_junk_score_threshold | Y | | The spam score threshold of this site. | v2
listOnIndex | value | number | mt_blog.blog_days_on_index<br/>mt_blog.blog_entries_on_index | Y | | The number of entries shown in the list by default. | v2
maxRevisionsEntry | value | number | mt_blog_meta:max_revisions_entry | Y | | The number of revisions per entries and pages in this site. | v2
maxRevisionsTemplate | value | number | mt_blog_meta.max_revisions_template | Y | | The number of revisions per templates in this site. | v2
moderateComments | value | number | mt_blog.blog_moderate_unreg_comments | Y | | <dl><dt>0</dt><dd>Anyone.</dd><dt>1</dt><dd>No one.</dd><dt>2</dt><dd>Trusted commenters only.</dd><dt>3</dt><dd>Any authenticated commenters.</dd></dl> | v2
moderatePings | value | boolean | mt_blog.blog_moderate_pings | Y | | <dl><dt>true</dt><dd>Hold all TrackBacks for approval before they are published.</dd><dt>false</dt><dd>Do not hold.</dd></dl> | v2
modifiedBy | Object | - | | | Y | The last modified user of this website. | v2
modifiedBy.displayName | value | string | | | Y | The display name of last modified user. | v2
modifiedBy.id | value | number | mt_blog.blog_modified_by | Y | Y | The ID of last modified user. | v2
modifiedBy.userpicUrl | value | string | | | Y | The URL of last modified user's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. | v2
modifiedDate | value | iso 8601 datetime | mt_blog.blog_modified_on | | Y | The last modified time for this website. | v2
name | value | string | mt_blog.blog_name | | | The name for this site. [Update in v2] This property was changed to updatable. | v1
newCreatedUserRoles | ARRAY | Role | - | Y | | Assigned to users that are created in the future on this site. | v2
newCreatedUserRole.id | value | number | mt_role.role_id | Y | Y |  | v2
newCreatedUserRole.name | value | string | mt_role.role_name | Y | Y |  | v2
nofollowUrls | value | boolean | mt_blog_meta.nofollow_urls | Y | | <dl><dt>true</dt><dd>All URLs in comments and TrackBacks will be assigned a 'nofollow' link relation.</dd><dt>false</dt><dd>Not assigned.</dl> | v2
normalizeOrientation | value | boolean | mt_blog_meta.normalize_orientation | Y | | <dl><dt>true</dt><dd>Image orientation is normalized automatically when the image file contains orientation information.</dd><dt>false</dt><dd>Image orientation is will never normalized.</dd></dl> | v3.01   
operationIfExists | value | number | mt_blog_meta.operation_if_exists | Y | |  <dl><dt>1</dt><dd>The upload file will be changed to random file name automatically.</dd><dt>2</dt><dd>The existing file will be overwritten.</dd><dt>3</dt><dd>Upload will be canceled.</dd> | v3.01
pageCustomPrefs | ARRAY | string | | Y | Y | Default displayed fields of this site's page. Available value is follows. <dl><dt>title</dt><dd>Title field</dd><dt>text</dt><dd>Body and extended field</dd><dt>category</dt><dd>Category list</dd><dt>excerpt</dt><dd>Excerpt field</dd><dt>keywords</dt></dd>Keyword field</dd><dt>tags</dt><dd>Tags field</dd><dt>feedback</dt><dd>Comment and trackback setting field</dd><dt>assets</dt><dd>Page assets list</dd><dt>customfield_&lt;basename&gt;</dt><dd>Each custom Fields</dd></dl>| v2
parent | Object | - | - | - | Y | The parent website of this blog. If this object is Websites Resource, this object must be null. | v2
parent.id | value | number | mt_blog.blog_parent_id (mt_blog.blog_id) | - | Y | The ID of parent website. | v2
parent.name | value | string | mt_blog.blog_name | - | Y | The name of parent website. | v2
publishEmptyArchive | value | boolean | mt_blog_meta:publish_empty_archive | | | <dl><dt>true</dt><dd>Category archive without entries is published.</dd><dt>false</dt><dd>Category archive without entries is not published.</dd></dl> | v2
pingGoogle | value | boolean | mt_blog.blog_ping_google | Y | | <dl><dt>true</dt><dd>Enable sending update ping to Google.</dd><dt>false</dt><dd>Disabled sending update ping to Google.</dd></dl> | v2
pingWeblogs | value | boolean | mt_blog.blog_ping_weblogs | Y | | <dl><dt>true</dt><dd>Enable sending update ping to weblogs.com.</dd><dt>false</dt><dd>Disabled sending update ping to weblogs.com.</dd></dl> | v2
pingOthers | value | string | mt_blog.blog_ping_others | Y | - | Array of update ping services. | v2
relativeUrl | value | string | mt_blog.blog_site_url | - | Y | The relative site url of this site. | v2
requireCommentEmails | value | boolean | mt_blog.blog_require_comment_emails | Y | | <dl><dt>true<dt><dd>Require name and E-mail Address for Anonymous Comments.</dd><dt>false</dt><dd>Do not require.</dd></dl> | v2
sanitizeSpec | value | string | mt_blog.blog_santize_spec | Y | | The limit html tags of this site's comment. "0" is default. | v2
serverOffset | value | number | mt_blog.blog_server_offset | | | The server offset for this site. | v2
sitePath | value | string | mt_blog.blog_site_path | Y | | The site path for this site. This property only accepts absolute path. | v2
siteSubdomain | value | string | mt_blog.blog_site_url | Y | (Write Only) | The subdomain for this site. This is write-only property. | v2
smartReplace | value | number | mt_blog.blog_nwc_smart_replace | Y | | The punctuation replacement of this site. <dl><dt>0</dt><dd>No substitution.</dd><dt>1</dt><dd>Character entities.</dd><dt>2</dt><dd>ASCII equivalents.</dd> | v2
sortOrderPosts | value | string | mt_blog.blog_sort_order_posts | Y | | The default sorting direction for the entry listing. Available value is follows. <dl><dt>ascend>/dt>Ascengin order.</dd><dt>descend</dt></dd>Descending order</dd></dl> | v2
sortOrderComments | value | string | mt_blog.blog_sort_order_comments | Y | | The comment order of this site. Available value is follows. <dl><dt>"ascend"</dt><dd>Ascending order</dd><dt>Descending order</dd></dl>| v2
smartReplaceFields | ARRAY | string | mt_blog.blog_nwc_replace_field | Y | | Replace fields of this site. | v2
statusDefault | value | string | mt_blog.blog_status_default | Y | | The default entry status in this site. Available value is follows. <dl><dt>Pubish</dt><dd>The default status is 'Published'</dd><dt>Draft</dt><dd>The default status is 'Unpublished'</dd></dl> | v2
themeId | value | string | mt_blog.blog_theme_id | Y | | The theme ID for this site. | v2
timezone | value | number | mt_blog.mt_server_offset | - | Y | The timezone of this site. | v2
updatable | value | boolean | | | Y | <dl><dt>true</dt><dd>Current user can update this website.</dd><dt>false</dt><dd>Current user cannot update this website.</dd> | v2
uploadDestination | Object | - | - | - | Y | The default configuration for upload destination of this site. | v3.01
uploadDestination.path | value | string | mt_blog_meta.blog_upload_destination | Y | | The full path for default upload destination. The value begin with site path and contains extra path if extra_path configured. If default upload destination is not configured, this value is just a same as site_path.| v3.01
uploadDestination.raw | value | string | mt_blog_meta.blog_upload_destination | Y | | The raw data of default upload destination. If default upload destination is not configured, this value is a blank string.| v3.01
url | value | string | mt_blog.blog_site_url | | | The site url of this site.  [Update in v2] This property was changed to updatable. | v1
useCommentComfirmation | value | boolean | mt_blog.blog_use_comment_confirmation | Y | | <dl><dt>true</dt><dd>Each commenter's browser will be redirected to a comment confirmation page after their comment is accepted.</dd><dt>false</dt><dd>Will not.</dd></dl> | v2
useRevision | value | boolean | mt_blog.blog_use_revision | Y | | <dl><dt>true</dt><dd>Revision history is enabled.</dd><dt>false</dt><dd>Revision history is disabled.</dd></dl> | v2
wordsInExcerpt | value | number | mt_blog.blog_words_in_excerpt | Y | | The default length for excerpt. | v2

            {
              "serverOffset" : "9",
              "themeId" : "rainier",
              "statusDefault" : "Publish",
              "autodiscoverLinks" : false,
              "useRevision" : true,
              "relativeUrl" : "/",
              "entryCustomPrefs" : [
                "title",
                "body",
                "category",
                "tags",
                "feedback",
                "publishing",
                "assets"
              ],
              "archivePath" : "/path/to/archive_root",
              "useCommentConfirmation" : true,
              "url" : "http://example.com/",
              "smartReplaceFields" : [
                "title",
                "text",
                "text_more",
                "keywords",
                "excerpt",
                "tags"
              ],
              "modifiedBy" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "operationIfExists" : "2",
              "timezone" : "+09:00",
              "daysOrPosts" : "posts",
              "sortOrderPosts" : "descend",
              "name" : "First Website",
              "convertParas" : "richtext",
              "description" : "",
              "autoRenameNonAscii" : true,
              "includeSystem" : "",
              "archiveUrl" : "http://example.com/archives/",
              "allowCommentHtml" : true,
              "fileExtension" : "html",
              "smartReplace" : 0,
              "junkFolderExpiry" : "14",
              "publishEmptyArchive" : false,
              "dateLanguage" : "ja",
              "listOnIndex" : "10",
              "pingWeblogs" : false,
              "extraPath" : "uploads",
              "normalizeOrientation" : false,
              "emailNewComments" : "1",
              "language" : "ja",
              "autolinkUrls" : true,
              "sanitizeSpec" : "0",
              "customFields" : [],
              "emailNewPings" : "1",
              "nofollowUrls" : true,
              "createdBy" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "pingGoogle" : false,
              "convertParasComments" : "1",
              "sitePath" : "/path/to/site_path",
              "id" : "1",
              "parent" : null,
              "archiveTypePreferred" : "Individual",
              "contentCss" : "{{theme_static}}css/editor.css",
              "junkScoreThreshold" : "0",
              "internalAutodiscovery" : false,
              "createdDate" : "2016-01-21T11:18:38+09:00",
              "class" : "website",
              "moderateComments" : "2",
              "allowCommentsDefault" : true,
              "includeCache" : false,
              "allowCommenterRegist" : true,
              "allowToChangeAtUpload" : false,
              "uploadDestination" : {
                "path" : "/path/to/upload/dest",
                "raw" : "%s/%y/%m"
              },
              "maxRevisionsEntry" : "20",
              "updatable" : true,
              "requireCommentEmails" : false,
              "ccLicenseImage" : "",
              "allowComments" : true,
              "allowPingsDefault" : false,
              "pingOthers" : [],
              "basenameLimit" : "100",
              "dynamicCache" : false,
              "modifiedDate" : "2016-01-21T11:30:03+09:00",
              "allowPings" : false,
              "pageCustomPrefs" : [
                "title",
                "body",
                "category",
                "tags",
                "feedback",
                "publishing",
                "assets"
              ],
              "dynamicConditional" : false,
              "commenterAuthenticators" : [
                "MovableType"
              ],
              "host" : "example.com",
              "ccLicenseUrl" : "",
              "newCreatedUserRoles" : [],
              "wordsInExcerpt" : "40",
              "sortOrderComments" : "ascend",
              "followAuthLinks" : true,
              "allowUnregComments" : false,
              "maxRevisionsTemplate" : "20",
              "moderatePings" : true,
              "customDynamicTemplates" : "none"
            }

# Sites [/sites/{site_id}]

## Retrieve a list of sites by user [GET /users/{user_id}/sites{?limit,offset,sortBy,sortOrder,fields,searchFields,search,includeIds,excludeIds,dateField,dateFrom,dateTo}]
Retrieve a list of sites by user. The list includes only the site for which the user has any permissions.

:::note
Authentication required.
:::

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of sites.
404 | Not Found | User not found.

+ Parameters
    + user_id (required, number or 'me') ... The user ID or the word 'me'.
    + search (optional, string) ... Search query.
    + searchFields = `name` (optional, string) ... Only 'name' is available.
    + limit = `50` (optional, number) ... Maximum number of sites to retrieve. An integer value between 1 and 2147483647.
    + offset = `0` (optional, number) ... 0-indexed offset. An integer value between 0 and 2147483647.
    + sortBy = `name` (optional, string) ... Only 'name' is available
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return sites in descending order.</dd><dt>ascend</dt><dd>Return sites in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Sites resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of sites to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of sites to exclude from result.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
            {
              "serverOffset" : "9",
              "themeId" : "rainier",
              "statusDefault" : "Publish",
              "autodiscoverLinks" : false,
              "useRevision" : true,
              "relativeUrl" : "/",
              "entryCustomPrefs" : [
                "title",
                "body",
                "category",
                "tags",
                "feedback",
                "publishing",
                "assets"
              ],
              "archivePath" : "/path/to/archive_root",
              "useCommentConfirmation" : true,
              "url" : "http://example.com/",
              "smartReplaceFields" : [
                "title",
                "text",
                "text_more",
                "keywords",
                "excerpt",
                "tags"
              ],
              "modifiedBy" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "operationIfExists" : "2",
              "timezone" : "+09:00",
              "daysOrPosts" : "posts",
              "sortOrderPosts" : "descend",
              "name" : "First Website",
              "convertParas" : "richtext",
              "description" : "",
              "autoRenameNonAscii" : true,
              "includeSystem" : "",
              "archiveUrl" : "http://example.com/archives/",
              "allowCommentHtml" : true,
              "fileExtension" : "html",
              "smartReplace" : 0,
              "junkFolderExpiry" : "14",
              "publishEmptyArchive" : false,
              "dateLanguage" : "ja",
              "listOnIndex" : "10",
              "pingWeblogs" : false,
              "extraPath" : "uploads",
              "normalizeOrientation" : false,
              "emailNewComments" : "1",
              "language" : "ja",
              "autolinkUrls" : true,
              "sanitizeSpec" : "0",
              "customFields" : [],
              "emailNewPings" : "1",
              "nofollowUrls" : true,
              "createdBy" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "pingGoogle" : false,
              "convertParasComments" : "1",
              "sitePath" : "/path/to/site_path",
              "id" : "1",
              "parent" : null,
              "archiveTypePreferred" : "Individual",
              "contentCss" : "{{theme_static}}css/editor.css",
              "junkScoreThreshold" : "0",
              "internalAutodiscovery" : false,
              "createdDate" : "2016-01-21T11:18:38+09:00",
              "class" : "website",
              "moderateComments" : "2",
              "allowCommentsDefault" : true,
              "includeCache" : false,
              "allowCommenterRegist" : true,
              "allowToChangeAtUpload" : false,
              "uploadDestination" : {
                "path" : "/path/to/upload/dest",
                "raw" : "%s/%y/%m"
              },
              "maxRevisionsEntry" : "20",
              "updatable" : true,
              "requireCommentEmails" : false,
              "ccLicenseImage" : "",
              "allowComments" : true,
              "allowPingsDefault" : false,
              "pingOthers" : [],
              "basenameLimit" : "100",
              "dynamicCache" : false,
              "modifiedDate" : "2016-01-21T11:30:03+09:00",
              "allowPings" : false,
              "pageCustomPrefs" : [
                "title",
                "body",
                "category",
                "tags",
                "feedback",
                "publishing",
                "assets"
              ],
              "dynamicConditional" : false,
              "commenterAuthenticators" : [
                "MovableType"
              ],
              "host" : "example.com",
              "ccLicenseUrl" : "",
              "newCreatedUserRoles" : [],
              "wordsInExcerpt" : "40",
              "sortOrderComments" : "ascend",
              "followAuthLinks" : true,
              "allowUnregComments" : false,
              "maxRevisionsTemplate" : "20",
              "moderatePings" : true,
              "customDynamicTemplates" : "none"
            }
          ]
        }


## Retrieve a list of sites [GET /sites{?limit,offset,sortBy,sortOrder,fields,searchFields,search,includeIds,excludeIds,dateField,dateFrom,dateTo}]
Retrieve a list of sites.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of sites.

+ Parameters
    + search (optional, string) ... Search query.
    + searchFields = `name` (optional, string) ... Only 'name' is available.
    + limit = `50` (optional, number) ... Maximum number of sites to retrieve. An integer value between 1 and 2147483647.
    + offset = `0` (optional, number) ... 0-indexed offset. An integer value between 0 and 2147483647.
    + sortBy = `name` (optional, string) ... Only 'name' is available
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return sites in descending order.</dd><dt>ascend</dt><dd>Return sites in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Sites resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of sites to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of sites to exclude from result.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
            {
              "serverOffset" : "9",
              "themeId" : "rainier",
              "statusDefault" : "Publish",
              "autodiscoverLinks" : false,
              "useRevision" : true,
              "relativeUrl" : "/",
              "entryCustomPrefs" : [
                "title",
                "body",
                "category",
                "tags",
                "feedback",
                "publishing",
                "assets"
              ],
              "archivePath" : "/path/to/archive_root",
              "useCommentConfirmation" : true,
              "url" : "http://example.com/",
              "smartReplaceFields" : [
                "title",
                "text",
                "text_more",
                "keywords",
                "excerpt",
                "tags"
              ],
              "modifiedBy" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "operationIfExists" : "2",
              "timezone" : "+09:00",
              "daysOrPosts" : "posts",
              "sortOrderPosts" : "descend",
              "name" : "First Website",
              "convertParas" : "richtext",
              "description" : "",
              "autoRenameNonAscii" : true,
              "includeSystem" : "",
              "archiveUrl" : "http://example.com/archives/",
              "allowCommentHtml" : true,
              "fileExtension" : "html",
              "smartReplace" : 0,
              "junkFolderExpiry" : "14",
              "publishEmptyArchive" : false,
              "dateLanguage" : "ja",
              "listOnIndex" : "10",
              "pingWeblogs" : false,
              "extraPath" : "uploads",
              "normalizeOrientation" : false,
              "emailNewComments" : "1",
              "language" : "ja",
              "autolinkUrls" : true,
              "sanitizeSpec" : "0",
              "customFields" : [],
              "emailNewPings" : "1",
              "nofollowUrls" : true,
              "createdBy" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "pingGoogle" : false,
              "convertParasComments" : "1",
              "sitePath" : "/path/to/site_path",
              "id" : "1",
              "parent" : null,
              "archiveTypePreferred" : "Individual",
              "contentCss" : "{{theme_static}}css/editor.css",
              "junkScoreThreshold" : "0",
              "internalAutodiscovery" : false,
              "createdDate" : "2016-01-21T11:18:38+09:00",
              "class" : "website",
              "moderateComments" : "2",
              "allowCommentsDefault" : true,
              "includeCache" : false,
              "allowCommenterRegist" : true,
              "allowToChangeAtUpload" : false,
              "uploadDestination" : {
                "path" : "/path/to/upload/dest",
                "raw" : "%s/%y/%m"
              },
              "maxRevisionsEntry" : "20",
              "updatable" : true,
              "requireCommentEmails" : false,
              "ccLicenseImage" : "",
              "allowComments" : true,
              "allowPingsDefault" : false,
              "pingOthers" : [],
              "basenameLimit" : "100",
              "dynamicCache" : false,
              "modifiedDate" : "2016-01-21T11:30:03+09:00",
              "allowPings" : false,
              "pageCustomPrefs" : [
                "title",
                "body",
                "category",
                "tags",
                "feedback",
                "publishing",
                "assets"
              ],
              "dynamicConditional" : false,
              "commenterAuthenticators" : [
                "MovableType"
              ],
              "host" : "example.com",
              "ccLicenseUrl" : "",
              "newCreatedUserRoles" : [],
              "wordsInExcerpt" : "40",
              "sortOrderComments" : "ascend",
              "followAuthLinks" : true,
              "allowUnregComments" : false,
              "maxRevisionsTemplate" : "20",
              "moderatePings" : true,
              "customDynamicTemplates" : "none"
            }
          ]
        }

## Retrieve a list of sites by parent site [GET /sites/{site_id}/children{?limit,offset,sortBy,sortOrder,fields,searchFields,search,includeIds,excludeIds,dateField,dateFrom,dateTo}]
Retrieve a list of sites by parent site

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to retrieve the list of sites.
404 | Not Found | Site not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + search (optional, string) ... Search query.
    + searchFields = `name` (optional, string) ... Only 'name' is available.
    + limit = `50` (optional, number) ... Maximum number of sites to retrieve. An integer value between 1 and 2147483647.
    + offset = `0` (optional, number) ... 0-indexed offset. An integer value between 0 and 2147483647.
    + sortBy = `name` (optional, string) ... Only 'name' is available
    + sortOrder = `descend` (optional, string) ... <dl><dt>descend</dt><dd>(default) Return sites in descending order.</dd><dt>ascend</dt><dd>Return sites in ascending order.</dd></dl>
    + fields (optional, string) ... The field list to retrieve as part of the Sites resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.
    + includeIds (optional, string) ... The comma separated ID list of sites to include to result.
    + excludeIds (optional, string) ... The comma separated ID list of sites to exclude from result.
    + dateField = `created_on` (optional, string) ... Specifies the field name to be used as a date field for filtering. (new in v3)
    + dateFrom (optional, string) ... The start date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)
    + dateTo (optional) ... The end date to filtering. Specify in "YYYY-MM-DD" format. (new in v3)

+ Response 200 (application/json)

        {
          "totalResults" : 1,
          "items" : [
            {
              "serverOffset" : "9",
              "themeId" : "rainier",
              "statusDefault" : "Publish",
              "autodiscoverLinks" : false,
              "useRevision" : true,
              "relativeUrl" : "/",
              "entryCustomPrefs" : [
                "title",
                "text",
                "category",
                "excerpt",
                "keywords",
                "tags",
                "feedback",
                "assets",
                "customfield_license_fee",
                "customfield_foo"
              ],
              "archivePath" : "/path/to/document_root/",
              "useCommentConfirmation" : true,
              "url" : "http://example.com/",
              "smartReplaceFields" : [
                "title",
                "text",
                "text_more",
                "keywords",
                "excerpt",
                "tags"
              ],
              "modifiedBy" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "timezone" : "+09:00",
              "daysOrPosts" : "posts",
              "sortOrderPosts" : "descend",
              "name" : "Six Apart Shop",
              "convertParas" : "richtext",
              "description" : "",
              "includeSystem" : "",
              "archiveUrl" : "http://example.com",
              "allowCommentHtml" : true,
              "fileExtension" : "html",
              "smartReplace" : "0",
              "junkFolderExpiry" : "14",
              "publishEmptyArchive" : false,
              "dateLanguage" : "ja",
              "listOnIndex" : "10",
              "pingWeblogs" : true,
              "emailNewComments" : "1",
              "language" : "ja",
              "autolinkUrls" : true,
              "sanitizeSpec" : "0",
              "customFields" : [],
              "emailNewPings" : "1",
              "nofollowUrls" : true,
              "createdBy" : {
                "userpicUrl" : null,
                "id" : "1",
                "displayName" : "Yuji Takayama"
              },
              "pingGoogle" : true,
              "convertParasComments" : "1",
              "sitePath" : "/path/to/document_root/",
              "id" : "2",
              "parent" : {
                "id": "1",
                "name": "Parent Website"
              },
              "archiveTypePreferred" : "Individual",
              "contentCss" : "{{theme_static}}css/editor.css",
              "junkScoreThreshold" : "0",
              "internalAutodiscovery" : false,
              "createdDate" : "2014-12-28T23:09:45+09:00",
              "class" : "website",
              "moderateComments" : "2",
              "allowCommentsDefault" : true,
              "includeCache" : false,
              "allowCommenterRegist" : true,
              "maxRevisionsEntry" : "20",
              "updatable" : true,
              "requireCommentEmails" : false,
              "ccLicenseImage" : "https://i.creativecommons.org/l/by/4.0/88x31.png",
              "allowComments" : true,
              "allowPingsDefault" : false,
              "pingOthers" : [],
              "dynamicCache" : false,
              "basenameLimit" : "100",
              "modifiedDate" : "2015-03-12T12:16:24+09:00",
              "dynamicConditional" : false,
              "pageCustomPrefs" : [
                "title",
                "text",
                "excerpt",
                "keywords",
                "tags",
                "feedback",
                "assets"
              ],
              "allowPings" : false,
              "commenterAuthenticators" : [
                "MovableType"
              ],
              "host" : "localhost",
              "ccLicenseUrl" : "http://creativecommons.org/licenses/by/4.0/",
              "newCreatedUserRoles" : [],
              "wordsInExcerpt" : "40",
              "sortOrderComments" : "ascend",
              "followAuthLinks" : true,
              "allowUnregComments" : false,
              "maxRevisionsTemplate" : "20",
              "moderatePings" : true,
              "customDynamicTemplates" : "none"
            }
          ]
        }

## Create a new website [POST /sites]
Create a new website.

:::note
Authentication required.
:::

:::note
This method accepts PUT and POST with __method=PUT.
:::

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to create a new website.
404 | Not Found | Site not found.

**Permissions**
+ create_website

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
blog | Object | Yes | | Single Sites resource

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken={Token}

    + Body

            website={"url" : "http://example.com/", "name" : "New Website", "sitePath":"/path/to/document_root/"}


+ Response 200 (application/json)

        {
          "serverOffset" : "9",
          "themeId" : "rainier",
          "statusDefault" : "Publish",
          "autodiscoverLinks" : false,
          "useRevision" : true,
          "relativeUrl" : "/",
          "entryCustomPrefs" : [
            "title",
            "text",
            "category",
            "excerpt",
            "keywords",
            "tags",
            "feedback",
            "assets",
            "customfield_license_fee",
            "customfield_foo"
          ],
          "archivePath" : "/path/to/document_root/",
          "useCommentConfirmation" : true,
          "url" : "http://example.com/",
          "smartReplaceFields" : [
            "title",
            "text",
            "text_more",
            "keywords",
            "excerpt",
            "tags"
          ],
          "modifiedBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "timezone" : "+09:00",
          "daysOrPosts" : "posts",
          "sortOrderPosts" : "descend",
          "name" : "Six Apart Shop",
          "convertParas" : "richtext",
          "description" : "",
          "includeSystem" : "",
          "archiveUrl" : "http://example.com",
          "allowCommentHtml" : true,
          "fileExtension" : "html",
          "smartReplace" : "0",
          "junkFolderExpiry" : "14",
          "publishEmptyArchive" : false,
          "dateLanguage" : "ja",
          "listOnIndex" : "10",
          "pingWeblogs" : true,
          "emailNewComments" : "1",
          "language" : "ja",
          "autolinkUrls" : true,
          "sanitizeSpec" : "0",
          "customFields" : [],
          "emailNewPings" : "1",
          "nofollowUrls" : true,
          "createdBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "pingGoogle" : true,
          "convertParasComments" : "1",
          "sitePath" : "/path/to/document_root/",
          "id" : "2",
          "parent" : {
            "id": "1",
            "name": "Parent Website"
          },
          "archiveTypePreferred" : "Individual",
          "contentCss" : "{{theme_static}}css/editor.css",
          "junkScoreThreshold" : "0",
          "internalAutodiscovery" : false,
          "createdDate" : "2014-12-28T23:09:45+09:00",
          "class" : "website",
          "moderateComments" : "2",
          "allowCommentsDefault" : true,
          "includeCache" : false,
          "allowCommenterRegist" : true,
          "maxRevisionsEntry" : "20",
          "updatable" : true,
          "requireCommentEmails" : false,
          "ccLicenseImage" : "https://i.creativecommons.org/l/by/4.0/88x31.png",
          "allowComments" : true,
          "allowPingsDefault" : false,
          "pingOthers" : [],
          "dynamicCache" : false,
          "basenameLimit" : "100",
          "modifiedDate" : "2015-03-12T12:16:24+09:00",
          "dynamicConditional" : false,
          "pageCustomPrefs" : [
            "title",
            "text",
            "excerpt",
            "keywords",
            "tags",
            "feedback",
            "assets"
          ],
          "allowPings" : false,
          "commenterAuthenticators" : [
            "MovableType"
          ],
          "host" : "localhost",
          "ccLicenseUrl" : "http://creativecommons.org/licenses/by/4.0/",
          "newCreatedUserRoles" : [],
          "wordsInExcerpt" : "40",
          "sortOrderComments" : "ascend",
          "followAuthLinks" : true,
          "allowUnregComments" : false,
          "maxRevisionsTemplate" : "20",
          "moderatePings" : true,
          "customDynamicTemplates" : "none"
        }

## Create a new blog under the site [POST /sites/{site_id}]
Create a new blog under the site.

:::note
Authentication required.
:::

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to create a new blog.
404 | Not Found | Site not found.

**Permissions**
+ create_blog

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
blog | Object | Yes | | Single Sites resource

+ Parameters
    + site_id (required, number) ... The site ID.

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken={Token}

    + Body

            blog={"name":"New Blog", "url":"blog", "sitePath":"blog"}

+ Response 200 (application/json)

        {
            "serverOffset" : "9",
            "themeId" : "mt_community_forum",
            "statusDefault" : "Publish",
            "autodiscoverLinks" : false,
            "useRevision" : true,
            "relativeUrl" : "/communityforum/",
            "entryCustomPrefs" : [
            "title",
            "body",
            "category",
            "tags",
            "feedback",
            "publishing",
            "assets"
            ],
            "archivePath" : "/path/to/archive_root",
            "useCommentConfirmation" : true,
            "url" : "https://example.com/",
            "smartReplaceFields" : [
            "title",
            "text",
            "text_more",
            "keywords",
            "excerpt",
            "tags"
            ],
            "operationIfExists" : 1,
            "timezone" : "+09:00",
            "daysOrPosts" : "posts",
            "sortOrderPosts" : "descend",
            "name" : "CommunityForum",
            "convertParas" : "richtext",
            "description" : null,
            "autoRenameNonAscii" : true,
            "includeSystem" : null,
            "archiveUrl" : "https://example.com/archives/",
            "allowCommentHtml" : true,
            "fileExtension" : "html",
            "smartReplace" : 0,
            "junkFolderExpiry" : "14",
            "publishEmptyArchive" : false,
            "dateLanguage" : "ja",
            "listOnIndex" : "10",
            "pingWeblogs" : false,
            "extraPath" : "",
            "normalizeOrientation" : true,
            "emailNewComments" : "1",
            "language" : "ja",
            "autolinkUrls" : true,
            "sanitizeSpec" : "0",
            "customFields" : [],
            "emailNewPings" : "1",
            "nofollowUrls" : true,
            "createdBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
            },
            "pingGoogle" : false,
            "convertParasComments" : "1",
            "sitePath" : "/path/to/site_root",
            "id" : "4",
            "parent" : {
            "name" : "First Website",
            "id" : "1"
            },
            "archiveTypePreferred" : "Individual",
            "contentCss" : null,
            "junkScoreThreshold" : "0",
            "internalAutodiscovery" : false,
            "createdDate" : "2016-02-09T16:20:24+09:00",
            "class" : "blog",
            "moderateComments" : "2",
            "allowCommentsDefault" : true,
            "includeCache" : false,
            "allowCommenterRegist" : true,
            "allowToChangeAtUpload" : true,
            "uploadDestination" : {
            "path" : "/path/to/upload/destination",
            "raw" : ""
            },
            "maxRevisionsEntry" : null,
            "updatable" : true,
            "requireCommentEmails" : false,
            "ccLicenseImage" : "",
            "allowComments" : true,
            "allowPingsDefault" : true,
            "pingOthers" : [],
            "basenameLimit" : "100",
            "dynamicCache" : false,
            "modifiedDate" : "2016-02-09T16:20:24+09:00",
            "allowPings" : false,
            "pageCustomPrefs" : [
            "title",
            "body",
            "category",
            "tags",
            "feedback",
            "publishing",
            "assets"
            ],
            "dynamicConditional" : false,
            "commenterAuthenticators" : [
            "MovableType"
            ],
            "host" : "example.com",
            "ccLicenseUrl" : "",
            "newCreatedUserRoles" : [],
            "wordsInExcerpt" : "40",
            "sortOrderComments" : "ascend",
            "followAuthLinks" : true,
            "allowUnregComments" : false,
            "maxRevisionsTemplate" : null,
            "moderatePings" : true,
            "customDynamicTemplates" : "none"
        }

## Update an existing blog or website [PUT]
Update an existing blog or website.

:::note
Authentication required.
:::
:::note
This method accepts PUT and POST with __method=PUT.
:::

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to update an existing blog or website.
404 | Not Found | Site not found.

**Permissions**
+ edit_blog_config

**Request Body Parameters**

Name | Type | Required | Default | Description
---- | ---- | -------- | ------- | -----------
blog | Object | Yes | | Single Sites resource

+ Parameters
    + site_id (required, number) ... The site ID.

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

    + Body

            website={"name" : "Our new Website"} or blog={"name" : "Our new Website"}


+ Response 200 (application/json)

        {
          "serverOffset" : "9",
          "themeId" : "rainier",
          "statusDefault" : "Publish",
          "autodiscoverLinks" : false,
          "useRevision" : true,
          "relativeUrl" : "/",
          "entryCustomPrefs" : [
            "title",
            "text",
            "category",
            "excerpt",
            "keywords",
            "tags",
            "feedback",
            "assets",
            "customfield_license_fee",
            "customfield_foo"
          ],
          "archivePath" : "/path/to/document_root/",
          "useCommentConfirmation" : true,
          "url" : "http://example.com/",
          "smartReplaceFields" : [
            "title",
            "text",
            "text_more",
            "keywords",
            "excerpt",
            "tags"
          ],
          "modifiedBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "timezone" : "+09:00",
          "daysOrPosts" : "posts",
          "sortOrderPosts" : "descend",
          "name" : "Six Apart Shop",
          "convertParas" : "richtext",
          "description" : "",
          "includeSystem" : "",
          "archiveUrl" : "http://example.com",
          "allowCommentHtml" : true,
          "fileExtension" : "html",
          "smartReplace" : "0",
          "junkFolderExpiry" : "14",
          "publishEmptyArchive" : false,
          "dateLanguage" : "ja",
          "listOnIndex" : "10",
          "pingWeblogs" : true,
          "emailNewComments" : "1",
          "language" : "ja",
          "autolinkUrls" : true,
          "sanitizeSpec" : "0",
          "customFields" : [],
          "emailNewPings" : "1",
          "nofollowUrls" : true,
          "createdBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "pingGoogle" : true,
          "convertParasComments" : "1",
          "sitePath" : "/path/to/document_root/",
          "id" : "2",
          "parent" : {
            "id": "1",
            "name": "Parent Website"
          },
          "archiveTypePreferred" : "Individual",
          "contentCss" : "{{theme_static}}css/editor.css",
          "junkScoreThreshold" : "0",
          "internalAutodiscovery" : false,
          "createdDate" : "2014-12-28T23:09:45+09:00",
          "class" : "website",
          "moderateComments" : "2",
          "allowCommentsDefault" : true,
          "includeCache" : false,
          "allowCommenterRegist" : true,
          "maxRevisionsEntry" : "20",
          "updatable" : true,
          "requireCommentEmails" : false,
          "ccLicenseImage" : "https://i.creativecommons.org/l/by/4.0/88x31.png",
          "allowComments" : true,
          "allowPingsDefault" : false,
          "pingOthers" : [],
          "dynamicCache" : false,
          "basenameLimit" : "100",
          "modifiedDate" : "2015-03-12T12:16:24+09:00",
          "dynamicConditional" : false,
          "pageCustomPrefs" : [
            "title",
            "text",
            "excerpt",
            "keywords",
            "tags",
            "feedback",
            "assets"
          ],
          "allowPings" : false,
          "commenterAuthenticators" : [
            "MovableType"
          ],
          "host" : "localhost",
          "ccLicenseUrl" : "http://creativecommons.org/licenses/by/4.0/",
          "newCreatedUserRoles" : [],
          "wordsInExcerpt" : "40",
          "sortOrderComments" : "ascend",
          "followAuthLinks" : true,
          "allowUnregComments" : false,
          "maxRevisionsTemplate" : "20",
          "moderatePings" : true,
          "customDynamicTemplates" : "none"
        }

## Delete an existing blog or website [DELETE]
Delete an existing blog or website.

:::note
Authentication required.
:::

:::note
This method accepts DELETE and POST with __method=DELETE.
:::

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to delete an existing blog or website.
404 | Not Found | Site not found.

**Permissions**
+ delete_website (for website)
+ delete_blog (for blog)

+ Parameters
    + site_id (required, number) ... The site ID.

+ Request (application/x-www-form-urlencoded)

    + Headers

            X-MT-Authorization: MTAuth accessToken={Token}

+ Response 200 (application/json)

        {
          "serverOffset" : "9",
          "themeId" : "rainier",
          "statusDefault" : "Publish",
          "autodiscoverLinks" : false,
          "useRevision" : true,
          "relativeUrl" : "/",
          "entryCustomPrefs" : [
            "title",
            "text",
            "category",
            "excerpt",
            "keywords",
            "tags",
            "feedback",
            "assets",
            "customfield_license_fee",
            "customfield_foo"
          ],
          "archivePath" : "/path/to/document_root/",
          "useCommentConfirmation" : true,
          "url" : "http://example.com/",
          "smartReplaceFields" : [
            "title",
            "text",
            "text_more",
            "keywords",
            "excerpt",
            "tags"
          ],
          "modifiedBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "timezone" : "+09:00",
          "daysOrPosts" : "posts",
          "sortOrderPosts" : "descend",
          "name" : "Six Apart Shop",
          "convertParas" : "richtext",
          "description" : "",
          "includeSystem" : "",
          "archiveUrl" : "http://example.com",
          "allowCommentHtml" : true,
          "fileExtension" : "html",
          "smartReplace" : "0",
          "junkFolderExpiry" : "14",
          "publishEmptyArchive" : false,
          "dateLanguage" : "ja",
          "listOnIndex" : "10",
          "pingWeblogs" : true,
          "emailNewComments" : "1",
          "language" : "ja",
          "autolinkUrls" : true,
          "sanitizeSpec" : "0",
          "customFields" : [],
          "emailNewPings" : "1",
          "nofollowUrls" : true,
          "createdBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "pingGoogle" : true,
          "convertParasComments" : "1",
          "sitePath" : "/path/to/document_root/",
          "id" : "2",
          "parent" : {
            "id": "1",
            "name": "Parent Website"
          },
          "archiveTypePreferred" : "Individual",
          "contentCss" : "{{theme_static}}css/editor.css",
          "junkScoreThreshold" : "0",
          "internalAutodiscovery" : false,
          "createdDate" : "2014-12-28T23:09:45+09:00",
          "class" : "website",
          "moderateComments" : "2",
          "allowCommentsDefault" : true,
          "includeCache" : false,
          "allowCommenterRegist" : true,
          "maxRevisionsEntry" : "20",
          "updatable" : true,
          "requireCommentEmails" : false,
          "ccLicenseImage" : "https://i.creativecommons.org/l/by/4.0/88x31.png",
          "allowComments" : true,
          "allowPingsDefault" : false,
          "pingOthers" : [],
          "dynamicCache" : false,
          "basenameLimit" : "100",
          "modifiedDate" : "2015-03-12T12:16:24+09:00",
          "dynamicConditional" : false,
          "pageCustomPrefs" : [
            "title",
            "text",
            "excerpt",
            "keywords",
            "tags",
            "feedback",
            "assets"
          ],
          "allowPings" : false,
          "commenterAuthenticators" : [
            "MovableType"
          ],
          "host" : "localhost",
          "ccLicenseUrl" : "http://creativecommons.org/licenses/by/4.0/",
          "newCreatedUserRoles" : [],
          "wordsInExcerpt" : "40",
          "sortOrderComments" : "ascend",
          "followAuthLinks" : true,
          "allowUnregComments" : false,
          "maxRevisionsTemplate" : "20",
          "moderatePings" : true,
          "customDynamicTemplates" : "none"
        }


### Retrieve a single website/blog by its ID [GET /sites/{site_id}{?fields}]
Retrieve a single website/blog by its ID.

**Status Code**

Code | Status | Description
---- | ------ | -----------
200 | OK | No Errors.
403 | Forbidden | Do not have permission to get an existing Site.
404 | Not Found | Site not found.

+ Parameters
    + site_id (required, number) ... The site ID.
    + fields (optional, string) ... The field list to retrieve as part of the Sites resource. That list should be separated by comma. If this parameter is not specified, All fields will be returned.

+ Response 200 (application/json)

        {
          "serverOffset" : "9",
          "themeId" : "rainier",
          "statusDefault" : "Publish",
          "autodiscoverLinks" : false,
          "useRevision" : true,
          "relativeUrl" : "/",
          "entryCustomPrefs" : [
            "title",
            "text",
            "category",
            "excerpt",
            "keywords",
            "tags",
            "feedback",
            "assets",
            "customfield_license_fee",
            "customfield_foo"
          ],
          "archivePath" : "/path/to/document_root/",
          "useCommentConfirmation" : true,
          "url" : "http://example.com/",
          "smartReplaceFields" : [
            "title",
            "text",
            "text_more",
            "keywords",
            "excerpt",
            "tags"
          ],
          "modifiedBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "timezone" : "+09:00",
          "daysOrPosts" : "posts",
          "sortOrderPosts" : "descend",
          "name" : "Six Apart Shop",
          "convertParas" : "richtext",
          "description" : "",
          "includeSystem" : "",
          "archiveUrl" : "http://example.com",
          "allowCommentHtml" : true,
          "fileExtension" : "html",
          "smartReplace" : "0",
          "junkFolderExpiry" : "14",
          "publishEmptyArchive" : false,
          "dateLanguage" : "ja",
          "listOnIndex" : "10",
          "pingWeblogs" : true,
          "emailNewComments" : "1",
          "language" : "ja",
          "autolinkUrls" : true,
          "sanitizeSpec" : "0",
          "customFields" : [],
          "emailNewPings" : "1",
          "nofollowUrls" : true,
          "createdBy" : {
            "userpicUrl" : null,
            "id" : "1",
            "displayName" : "Yuji Takayama"
          },
          "pingGoogle" : true,
          "convertParasComments" : "1",
          "sitePath" : "/path/to/document_root/",
          "id" : "2",
          "parent" : {
            "id": "1",
            "name": "Parent Website"
          },
          "archiveTypePreferred" : "Individual",
          "contentCss" : "{{theme_static}}css/editor.css",
          "junkScoreThreshold" : "0",
          "internalAutodiscovery" : false,
          "createdDate" : "2014-12-28T23:09:45+09:00",
          "class" : "website",
          "moderateComments" : "2",
          "allowCommentsDefault" : true,
          "includeCache" : false,
          "allowCommenterRegist" : true,
          "maxRevisionsEntry" : "20",
          "updatable" : true,
          "requireCommentEmails" : false,
          "ccLicenseImage" : "https://i.creativecommons.org/l/by/4.0/88x31.png",
          "allowComments" : true,
          "allowPingsDefault" : false,
          "pingOthers" : [],
          "dynamicCache" : false,
          "basenameLimit" : "100",
          "modifiedDate" : "2015-03-12T12:16:24+09:00",
          "dynamicConditional" : false,
          "pageCustomPrefs" : [
            "title",
            "text",
            "excerpt",
            "keywords",
            "tags",
            "feedback",
            "assets"
          ],
          "allowPings" : false,
          "commenterAuthenticators" : [
            "MovableType"
          ],
          "host" : "localhost",
          "ccLicenseUrl" : "http://creativecommons.org/licenses/by/4.0/",
          "newCreatedUserRoles" : [],
          "wordsInExcerpt" : "40",
          "sortOrderComments" : "ascend",
          "followAuthLinks" : true,
          "allowUnregComments" : false,
          "maxRevisionsTemplate" : "20",
          "moderatePings" : true,
          "customDynamicTemplates" : "none"
        }

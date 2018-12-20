# Data Structures

## CustomFields
+ basename (string) - The basename of this customfield.
+ value (string) - The value of this customfield.


## Roles
+ id (number) - The ID of this role.
+ name (string) - The name of this role.


## TemplateMaps
+ id (number) - The ID for this archive type.
+ isPreferred (boolean) - `true`: This archive type is preferred in all archive types of the requested template. / `false`: This archive type not is preferred in all archive types of the requested template.
+ fileTemplate (string) - The file template for this archive type.
+ archiveType (string) - The archive type for this archive type.
+ buildType (string) - The build type for this archive type.
+ updatable (boolean) - `true`: The user who accessed can update this archive type. / `false`: The user who accessed cannot update this archive type.


## ContentFields
+ id (number) - The ID of this content field.
+ label (string) - The label of this content field.
+ type (string) - The content field type of this content field.
+ uniqueID (string) - The unique ID of this content field.


## FieldValues
+ checked: `checked` (string) - If this field value is checked, return `checked`. Otherwise, return null.
+ label (string) - The label of this field value.
+ value (string) - The value of this field value.


## Options
+ description (string) - The descrption of this field.
+ display (string) - The display option that for the listing screen of this field .
+ initial_value - Initial value of this field. This means the initial display value rather than the default value at save.
+ label (string) - The label of this field.
+ max_length (number) - The maximum length of this field value.
+ min_length (number) - The minimum length of this field value.
+ required (number) - `0`: This field is not required. / `1`: This field is required.
+ input_format (string) - The name of input format of this field.
+ decimal_places (number) - The length of decimal places.
+ max_value (number) - The maximum value of this field.
+ min_value (number) - The minimum value of this field.
+ max (number) - The maximum number that can be selected for this field.
+ min (number) - The minimum number that should be selected for this field.
+ multiple (number) - `0`: This field cannot accept multiple selection. / `1`: This field accept multiple selection.
+ values (array[FieldValues]) - List of label-value pairs.
+ allow_upload (number): `0`: Users can upload new asset in this field. / `1`: Users cannot upload new asset in this field.
+ can_add (number) - `0`: Users can create a new categories in this field. / `1`: Users cannot create a new categories in this field.
+ increase_decrease_cols (number) - `0`: Users can increase/decrease columns. / `1`: Users cannot increase/decrease columns.
+ increase_decrease_rows (number) - `0`: Users can increase/decrease rows. / `1`: Users cannot increase/decrease rows.
+ initial_cols (number) - The number of initial columns.
+ initial_rows (number) - The number of initial rows.
+ source (number) - The ID of content type that linked with this field.
+ category_set (number) - The ID of category set that linked with this field.

## Asset
+ blog
    + id (number) - The ID of the site that contains this asset.
+ class (string) - The type of this asset. This value is similar to 'type' attribute but this value is never localized.
+ createdBy
    + id (number) - The ID of user who created asset.
    + displayName (string) - The display name of user who created asset.
    + userpicUrl (string) - The URL of creating user’s userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, empty string will be returned.
+ createdDate (string) - The created time for this asset. (format: iso 8601 datetime)
+ customFields (array[CustomFields])
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


## Category
+ archiveLink (string) - The category archive URL of this category. If “Category” archive mapping is not configured, this value will be null.
+ basename (string) - The basename of this category.
+ blog
    + id (number) - The ID of the site that contains this category.
+ class (string) - The object class for this category.
+ createdBy
    + displayName (string) - The display name of the user who created this category.
    + id (number) - The ID of the user who created this category.
    + userpicUrl (string) - The URL of created user’s userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, empty string will be returned.
+ createdDate (string) - he created time for this category. (format is iso 8601 datetime)
+ customFields (array[CustomFields])
+ description (string) - The description of this category.
+ id (number) - The ID of this category.
+ label (string) - The label of this category.
+ modifiedBy
    + displayName (string) - The display name of the user who modified this category.
    + id (number) - The ID of the user who modified this category.
    + userpicUrl (string) - The URL of modified user’s userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, empty string will be returned.
+ modifiedDate (string) - The last modified time for this category. (format is iso 8601 datetime)
+ parent (number) - The ID of the parent category for this category. This field can be updated from v2.
+ updatable (boolean) - 
    true: The user who accessed can update this category.
    false: The user who accessed cannot update this category.


## Comment
+ author
    +id (number) - The ID of this commenter. If commenter is not a registerd user, this field is empty.
    + displayName (string) - The display name of this commenter.
    + userpicUrl (string) - The URL of this commenter's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If a commenter is not a registered user or a commenter does not set own userpic, will be returned empty string.
+ blog
    + id (number) - The ID of the site that contains this comment.
+ body (string) - The contents of this comment.
+ createdBy
    + id (number) - The ID of created user.
    + displayName (string) - The display name of created user.
    + userpicUrl (string) - The URL of created user's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ createdDate (string) - The created time for this comment. (format is iso 8601 datetime)
+ customFields (array[CustomFields])
+ date (string) - The creation time for this comment. This property is marked as deprecated in v2.0. (format is iso 8601 datetime)
+ entry
    + id (number) - The ID of the entry that contains this comment.
+ id (number) - The ID of this comment.
+ link (string) - The permalink for this comment.
+ modifiedBy
    + displayName (string) - The display name of last modified user.
    + id (number) - The ID of last modified user.
    + userpicUrl (string) - The URL of last modified user's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ modifiedDate (string) - The last modified time for this comment. (format is iso 8601 datetime)
+ parent (number) - The ID of the parent of this comment. If this comment is not a reply, will be returned as null.
+ status (string) - The publishing status of this comment. Approved: This comment has been approved. In the database, comment_visible = 1 and comment_junk_status = 1. Pending: This comment has not been approved. In the database, comment_visible = 0 and comment_junk_status = 1. Spam: This comment has been marked as Spam. In the database, comment_visible = 0 and comment_junk_status = -1.
+ updatable (boolean) - true: The user who accessed can update this comment. false: The user who accessed cannot update this comment.

## Folder
+ basename (string) - The basename for this folder.
+ blog
    + id (number) - The ID of the site that contains this folder.
+ class (string) - The class for this folder. Always "folder".
+ createdBy
    + displayName (string) - The display name of this folder creator.
    + id (number) - The ID of this folder creator.
    + userpicUrl (string) - The URL of this folder creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ createdDate (string) - Created date of this folder. (format is iso 8601 datetime)
+ customFields (array[CustomFields]) - The list of customfields data for this folder.
+ description (string) - The description for this folder.
+ id (number) - The ID for this folder.
+ label (string) - The label for this folder.
+ modifiedBy
    + displayName (string) - The display name of this folder modifier.
    + id (number) - The ID of this folder modifier.
    + userpicUrl (string) - The URL of this folder modifier's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ modifiedDate (string) - Last modified date of this folder. (format is iso 8601 datetime)
+ path (string) - The path for this folder.
+ updatable (boolean) - true: The user who accessed can update this folder. false: The user who accessed cannot update this folder.


## Entry
+ allowComments (boolean) - true: This entry accepts comments. In the database, this value is 1. false: This entry does not accepts comments. In the database, this value is 0.
+ allowTrackbacks (boolean) - true: This entry accepts trackbacks. In the database, this value is 1. false: This entry does not accepts trackbacks. In the database, this value is 0.
+ assets (array[Asset]) - A list of asses that related with the enry.
+ author
    + displayName (string) -  The display name of this entry creator.
    + id (number) - The ID of this entry creator.
    + userpicUrl (string) - The URL of this entry creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ basename (string) - The basename for this entry.
+ blog
    + id (number) - The ID of the site that contains this entry.
+ body (string) - The contents of this entry that the text format is applied. [update in v2] if you want to get the raw contents, you should sent a "no_text_filter=1" parameter with authenticated request.
+ categories (array[Category]) - A list of categories associated with the entry. The first element of the array is the primary category. OTHER categories are sorted by label.
+ class (string) - The object class for this entry.
+ commentCount (number) - The number of comments for this entry.
+ comments (array[Comment]) - A list of comments for this entry. The list is sorted by ID of the comment and The parent ID of the comment.
+ createdDate (string) - The created time for this entry. (format is iso 8601 datetime)
+ customFields (array[CustomFields])
    + basename (string) - The basename of this customfield.
    + value (string) - The value of this customfield.
+ date (string) - The published time for this entry. (format is iso 8601 datetime)
+ excerpt (string) - The excerpt value of this entry if one is specified or, if not, an auto-generated excerpt from the Entry Body field followed by an ellipsis (“…”). If an excerpt is auto-generated also note that any HTML is stripped. The length of the auto-generated output of this tag can be set in the site’s Entry Settings.
+ format (string) - The text format of this entry.
+ id (number) - The ID of this entry.
+ keywords (string) - The keywords text for this entry.
+ modifiedDate (string) - The last modified time for this entry. (format is iso 8601 datetime)
+ more (string) - The extended contents for this entry.  [update in v2] if you want to get the raw contents, you should sent a "no_text_filter=1" parameter with authenticated request.
+ permalink (string) - The parmalink URL for this entry.
+ pingsSentUrl (string) - A list of TrackBack pings sent from this entry.
+ status (string) - Draft: This entry is saved as draft. entry_status is 1. Publish: This entry is published. entry_status is 2. Review: This entry is waiting for approval. entry_status is 3. Future: This entry is scheduled for future publishing. entry_status is 4. Spam: This entry is marked as Spam. entry_status is 5.
+ tags (array[string]) - A list of entry tags for this entry.
+ title (string) - The title of this entry.
+ trackbackCount (number) - The number of received trackbacks for this entry.
+ trackbacks (array[object]) - A list of received trackbacks for this entry. The list is sorted by the ID of trackback.
+ unpublishedDate (string) - The unpublished time for this entry. (format is iso 8601 datetime)
updatable (boolean) - true: The user who accessed can update this entry. false: The user who accessed cannot update this entry.


## Log
+ blog
    + id (number) - The ID of the site that contains this log.
+ by
    + id (number) - The ID of this log creator.
    + displayName (string) - The display name of this log creator.
    + userpicUrl (string) - The URL of this log creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ category (string) - The category of this log.
+ class (string) - The class of this log.
+ date (string) - Created date of this log. (format is iso 8601 datetime)
+ id (number) - The ID of this log.
+ ip (string) - The remote IP address of this log creator.
+ level (string) - The level of this log. INFO: log_level is 1. WARNING: log_level is 2. ERROR: log_level is 4. SECURITY: log_level is 8. DEBUG: log_level is 16.
+ message (string) - The message of this log.
+ metadata (string) - The metadata of this log.
+ upatable (boolean) - true: The user who accessed can update this entry. false: The user who accessed cannot update this entry.


## Page
+ allowComments (boolean) - false: This page does not accepts comments. In the database, this value is 0. true: This page accepts comments. In the database, this value is 1.
+ allowTrackbacks (boolean) - false: This page does not accepts trackbacks. In the database, this value is 0. true: This page accepts trackbacks. In the database, this value is 1.
+ assets (array[Asset]) - The list of related assets for this page.
+ author
    + displayName (string) - The display name of this page creator.
    + id (number) - The ID of this page creator.
    + userpicUrl (string) - The URL of this page creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ basename (string) - The basename for this page.
+ blog
    + id (number) - The ID of the site that contains this page.
+ body (string) - The contents of this page that the text format is applied. [update in v2] if you want to get the raw contents, you should sent a "no_text_filter=1" parameter with authenticated request.
+ folder (Folder) - The container folder of this page.
+ class (string) - The object class for this page.
+ commentCount (number) - The number of comments for this page.
+ comments (array[Comment]) - The list of comments for this page. The list is sorted by ID of the comment and The parent ID of the comment.
+ createdDate (string) - The created time for this page. (format is iso 8601 datetime)
+ customFields (array[CustomFields]) - The list of customfields data for this page.
+ date (string) - The published time for this page. (format is iso 8601 datetime)
+ excerpt (string) - The excerpt value of this page if one is specified or, if not, an auto-generated excerpt from the page Body field followed by an ellipsis (“…”). If an excerpt is auto-generated also note that any HTML is stripped. The length of the auto-generated output of this tag can be set in the site’s page Settings.
+ format (string) - The text format of this page.
+ id (number) - The ID of this page.
+ keywords (string) - The keywords text for this page.
+ modifiedDate (string) - The last modified time for this page. (format is iso 8601 datetime)
+ more (string) - The extended contents for this page. if you want to get the raw contents, you should sent a "no_text_filter=1" parameter with authenticated request.
+ permalink (string) - The parmalink URL for this page.
+ pingsSentUrl (array[string]) - The list of TrackBack pings sent from this page.
+ status (string) - Draft: This page is saved as draft. status is 1. / Publish: This page is published. status is 2. / Review: This page is waiting for approval. status is 3. / Future: This page is scheduled for future publishing. status is 4. / Spam: This page is marked as Spam. status is 5.
+ tags (array[string]) - The list of page tags for this page.
+ title (string) - The title of this page.
+ trackbackCount (number) - The number of received trackbacks for this page.
+ trackbacks (array[object]) - The list of received trackbacks for this page. The list is sorted by the ID of trackback.
+ updatable (boolean) - true: The user who accessed can update this entry. / false: The user who accessed cannot update this page.


## Permission
+ blog
    + id (number) - The ID of the site.
+ id (number) - The ID for this permission.
+ createdBy
    + displayName (string) - The display name of this permission creator.
    + id (number) - The ID of this permission creator.
    + userpicUrl (string) - The URL of this permission creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ createdDate (string) - Created date of this permission. (format is iso 8601 datetime)
+ permissions (array[string]) - The list of granted permissions. The restricted permissions are excluded from this list.
+ roles (array[Roles]) - The list of roles.
+ user
    + displayName (string) - The nickname for this permission user.
    + id (number) - The ID for this permission user.
    + userpicUrl (string) - The URL of this permission user's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.


## Site
+ allowCommenterRegist (boolean) - true: Allow visitors to register as members of this website using one of the Authentication Methods selected below. false: Not allowed.
+ allowCommentHtml (boolean) - true: Allow commenters to include a limited set of HTML tags in their comments. false: All HTML will be stripped out.
+ allowComments (boolean) - true: Accept comments. false: Do not accept comments.
+ allowCommentsDefault (boolean) - The state of the comment acceptance of default in this site.  true: Comments are accepted. false: Comments are not accepted.
+ allowPings (boolean) true: Accept TrackBacks from any source. false: Do not accept.
+ allowPingsDefault (boolean) - The state of the comment acceptance of default in this site. Available value is follows. true: Trackbacks are accepted. false: Trackbacks are not accepted.
+ allowToChangeAtUpload (boolean) - true: Allow user to change the upload destination when upload a file. false: Not allowed.
+ allowUnregComments (boolean) - true: Allow comments from anonymous or unauthenticated users. false: Not allowed.
+ archivePath (string) - The archive path for this site. This property only accepts absolute path.
+ archiveTypePreferred (string) - The preferred archive type for this site.
+ archiveUrl (string) - The archive url of this site. [Update in v2] This property was changed to updatable.
+ autodiscoverLinks (boolean) - true: Enable External TrackBack Auto-Discovery. false: Disable.
+ autolinkUrls (boolean) - true: Transform URLs in comment text into HTML links. false: Do not transform.
+ autoRenameNonAscii (boolean) - true: Uploded file name  will be automatically changed to randam filename if uploaded filename contains non-ascii character. false: File name is not changed.
+ basenameLimit (number) - The maximum length of basename.
+ ccLicenseImage (string) - The URL for the Creative Commons License image for this site.
+ ccLicenseUrl (string) - The URL for the Creative Commons License url for this site.
+ class (string) - The object class for this site.
+ commenterAuthenticators (array[string]) - Array of commenter authenticators for this site.
+ convertParasComments (string) - The text formatting of this site's comment.
+ contentCss (string) - The CSS applying to WYSIWYG editor of this site.
+ convertParas (string) - The default text formatting in this site. Available value in default is follows. `0`: The default text formatting is 'None' `__default__`: The default text formatting is 'Convert Line Breaks' `markdown`: The default text formatting is 'Markdown' `markdown_with_smartypants`: The default text formatting is 'Markdown With SmartyPants' `richtext`: The default text formatting is 'Rich Text' `textile_2`: The default text formatting is 'Textile 2'
+ createdBy
    + id (number) - The ID of created user.
    + displayName (string) - The display name of created user.
    + userpicUrl (string) - The URL of created user's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ createdDate (string) - The created time for this website. (format is iso 8601 datetime)
+ customDynamicTemplates (string) - Publishing profile for this site. Available value is follows. `none`: Immediately publish all index templates and archive templates statically. `all`: Publish all index templates and archive templates dynamically. `archives`: Publish all archive templates dynamically. Immediately publish all index templates statically. `async_all`: All index templates and archive templates published statically via Publish Que. `async_partial`: mmediately publish Main Index template, Page archives statically. Use Publish Queue to publish all other index templates and archive templates statically.
+ daysOrPosts (string) - The type of listing default. Available value is follows. `days`: Listing entries that written in the past N days. N is a value of listOnIndex. `posts`: Listing most recent N entries. N is a value of listOnIndex.
+ dateLanguage (string) - The date locale settings for this site. Available valus is follow. `cz`: Czech / `dk`: Danish / `nl`: Dutch / `en`: English / `et`: Estonian / `fr`: French / `de`: German / `is`: Icelandic / `it`: Italian / `ja`: Japanese / `no`: Norwegian / `pl`: Polish / `pt`: Portuguese / `sk`: Slovak / `si`: Slovenian / `es`: Spanish / `fi`: Suomi / `se`: Swedish
+ description (string) - The description of this site. [Update in v2] This property was changed to updatable.
+ dynamicCache (boolean) - Cannot set this property when dynamic templates does not exist. `true`: Dynamic cache for dynamic publishing is enabled. / `false`: Dynamic cache for dynamic publishing is disabled.
+ dynamicConditional (boolean) - Cannot set this property when dynamic templates does not exist. `true`: Dynamic conditional retrieval of dynamic publishing is enabled. / `false`: Dynamic conditional retrieval of dynamic publishing is disabled.
+ entryCustomPrefs (array[string]) - Default displayed fields of this site's entry. Available value is follows. `title`: Title field / `text`: Body and extended field / `category`: Category list / `excerpt`: Excerpt field / `keywords`: Keyword field / `tags`: Tags field / `feedback`: Comment and trackback setting field / `assets`: Entry assets list / customfield_basename: Each custom Fields
+ emailNewComments (number) - Email notification when posting comment to this site. `0`: Off. / `1`: On. / `2`: Only when attension is required.
+ emailNewPings (number) - "Email notification setting when accepting trackback to this site. `0`: Off. / `1`: On. / `2`: Only when attention is required.
+ extraPath (string) - The raw data of extra path for default upload destination. If extra path is not configured, this value is a blank string.
+ fileExtension (string) - The file extension for this site.
+ followAuthLinks (boolean) - `true`: Do not add the 'nofollow' attribute when a comment is submitted by a trusted commenter. / `false`: Add the 'nofollow' attribute .
+ host (string) - The host name of this site.
+ id (number) - The ID of this site.
+ includeCache (boolean) - `true`: Module cache is enabled. / `false`: Module cache is disabled.
+ includeSystem (string) - `'' (empty string)`: Server Side Includes is disabled. / `php`: Server Side Include is enabled with PHP. / `shtml`: Server Side Include is enabled with Apache SSI. / `asp`: Server Side Include is enabled with ASP. / `jsp`: Server Side Include is enabled with JSP.
+ language (string) - The language for this site. Available value is follows. `de`: German / `en`: English / `es`: Spanish / `fl`: French / `nl`: Dutch / `ja`: Japanese
+ internalAutodiscovery (boolean) - `true`: Enable Internal TrackBack Auto-Discovery. / `false`: Disable.
+ junkFolderExpiry (number) - The period for deleting spam comments and trackbacks.
+ junkScoreThreshold (number) - The spam score threshold of this site.
+ listOnIndex (number) - The number of entries shown in the list by default.
+ maxRevisionsEntry (number) - The number of revisions per entries and pages in this site.
+ maxRevisionsTemplate (number) - The number of revisions per templates in this site.
+ moderateComments (number) - `0`: Anyone. / `1`: No one. / `2`: Trusted commenters only. / `3`: Any authenticated commenters.
moderatePings (boolean) - `true`: Hold all TrackBacks for approval before they are published. / `false`: Do not hold.
+ modifiedBy
    + displayName (string) - The display name of last modified user.
    + id (number) - The ID of last modified user.
    + userpicUrl (string) - The URL of last modified user's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ modifiedDate (string) - The last modified time for this website. (format is iso 8601 datetime)
+ name (string) - The name for this site. [Update in v2] This property was changed to updatable.
+ newCreatedUserRoles (array[Roles]) - Assigned to users that are created in the future on this site.
+ nofollowUrls (boolean) - `true`: All URLs in comments and TrackBacks will be assigned a 'nofollow' link relation. / `false`: Not assigned.
+ normalizeOrientation (boolean) - `true`: Image orientation is normalized automatically when the image file contains orientation information. / `false`: Image orientation is will never normalized.
+ operationIfExists (number) - `1`: The upload file will be changed to random file name automatically. / `2`: The existing file will be overwritten. / `3`: Upload will be canceled.
+ pageCustomPrefs (array[string]) - Default displayed fields of this site's page. Available value is follows. `title`: Title field / `text`: Body and extended field / `category`: Category list / `excerpt`: Excerpt field / `keywords`: Keyword field / `tags`: Tags field / `feedback`: Comment and trackback setting field / `assets`: Page assets list / `customfield_basename`: Each custom Fields
+ parent - The parent website of this blog. If this object is top level sige, this field must be null.
    + id (number) - The ID of parent website.
    + name (string) - The name of parent website.
+ publishEmptyArchive (boolean) - `true`: Category archive without entries is published. / `false`: Category archive without entries is not published.
+ pingGoogle (boolean) - `true`: Enable sending update ping to Google. / `false`: Disabled sending update ping to Google.
+ pingWeblogs (boolean) - `true`: Enable sending update ping to weblogs.com. / `false`: Disabled sending update ping to weblogs.com.
+ pingOthers (array[string]) - Array of update ping services.
+ relativeUrl (string) - The relative site url of this site.
+ requireCommentEmails (boolean) - `true`: Require name and E-mail Address for Anonymous Comments. / `false`: Do not require.
+ sanitizeSpec (string) - The limit html tags of this site's comment. "0" is default.
+ serverOffset (number) - The server offset for this site.
+ sitePath (string) - The site path for this site. This property only accepts absolute path.
+ siteSubdomain (string) - The subdomain for this site. This is write-only property.
+ smartReplace (number) - The punctuation replacement of this site. `0`: No substitution.  / `1`: Character entities. / `2`: ASCII equivalents.
+ sortOrderPosts (string) - The default sorting direction for the entry listing. Available value is follows. `ascend`: Ascengin order. / `descend`: Descending order.
+ sortOrderComments (string) - The comment order of this site. Available value is follows. `ascend`: Ascending order. / `descend`: Descending order
+ smartReplaceFields (array[string]) - Replace fields of this site.
+ statusDefault (string) - The default entry status in this site. Available value is follows. `Pubish`: The default status is 'Published' / `Draft`: The default status is 'Unpublished'
+ themeId (string) - The theme ID for this site.
+ timezone (number) - The timezone of this site.
+ updatable (boolean) - `true`: Current user can update this website. / `false`: Current user cannot update this website.
+ uploadDestination - The default configuration for upload destination of this site.
    path (string) - The full path for default upload destination. The value begin with site path and contains extra path if extra_path configured. If default upload destination is not configured, this value is just a same as site_path.
    raw (string) - The raw data of default upload destination. If default upload destination is not configured, this value is a blank string.
+ url (string) - The site url of this site.  [Update in v2] This property was changed to updatable.
+ useCommentComfirmation (boolean) - `true`: Each commenter's browser will be redirected to a comment confirmation page after their comment is accepted. / `false`: Will not.
+ useRevision (boolean) - `true`: Revision history is enabled. / `false`: Revision history is disabled.
+ wordsInExcerpt (number) - The default length for excerpt.


## Template
+ archiveTypes (array[TemplateMaps])- This archive types for this template.
+ updatable (boolean) - `true`: The user who accessed can update this template. / `false`: The user who accessed cannot update this template.
+ blog - The site of this template.
    + id (number) - The ID of the site that contains this template.
+ buildType (string) - The build type for this template. Available value is follows. `0`: never publish this template. / `1`: publish this template whenever its contents are updated or affected by a change. / `2`: publish this template when a publish request received. / `3`: publish this template on demand, but do not publish a file to the file system. / `4`: publish this template in the background. / `5`: currently not in use.
+ createdBy - Created user of this template.
    + id (number) - The ID of this template creator.
    + displayName (string) - The display name of this template creator.
    + userpicUrl (string) - The URL of this template creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ createdDate (string) - Created date of this template. (format is iso 8601 datetime)
+ customFields (array[CustomFields]) - The list of customfields data of this template.
+ id (number) - The ID for this template.
+ linkToFie (string) - The linked output filename for this template.
+ modifiedBy - Last modified user of this template.
    + id (number) - The ID of this template modifier.
    + displayName (string) - The display name of this template modifier.
    + userpicUrl (string) - The URL of this template modifier's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ modifiedDate (string) - Last modified date of this template. (format is iso 8601 datetime)
+ name (string) - The name for this template.
+ outputFile (string) - The output filename for this template.
+ text (string) - The text for this template.
+ type (string) - The type for this template.
+ templateType (string) - The identifier for this template.


## Theme
+ authorLink (string) - The author link of this theme.
+ authorName (string) - The author name of this theme.
+ current (boolean) - ***DEPRECATAD***
+ description (string) - The description for this theme.
+ id (string) - The ID for this theme.
+ inUse (boolean) - This property is displayed only in system scope.  `true`: This theme is in used by any site. / `false`: This theme is not in use.
+ label (string) - The label for this theme.
+  uninstallable (boolean) - `true`: This theme is able to uninstall. / `false`: This theme is not able to uninstall.
+ version (string) - The version number for this theme.


## User
+ apiPassword (string) - The web services password of this user.
createdBy - Created user of this user.
    + displayName (string) - The display name of this user creator.
    + id (number) - The ID of this user creator.
    + userpicUrl (string) - The URL of this user creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ createdDate (string) - Created date of this user. (format is iso 8601 datetime)
+ customFields (array[CustomFields]) - The list of customfields data of this user.
+ dateFormat (string) - The date formatting for this user.
+ displayName (string) - The public display name for this user.
+ email (string) - The email address for this user.
+ id (number) - The unique ID for this user.
+ isSuperuser (boolean) - `true`: This user have permission for system administration. / `false`: This user does not have permission for system administration.
+ language (string) - The preferred language for this user. Available values is follows. `de`, `en-us`, `es`, `fr`, `nl`, `ja`
+ lockedOut (boolean) - `true`: This user is currently locked out. / `false`: This user is not locked out.
+ modifiedBy - Last modified user of this user.
    + displayName (string) - The display name of this user modifier.
    + id (number) - The ID of this user modifier.
    + userpicUrl - The URL of this user modifier's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ modifiedDate (string) - Last modified date of this user. (format is iso 8601 datetime)
+ name (string) - The account name for this user. [update in v2] This column was changed to updatable from v2.
+ password (string) - The password for this user. This property is write only.
+ updatable (boolean) - `true`: The user who accessed can update this user. / `false`: The user who accessed cannot update this user.
+ url (string) - The web site URL for this user.
+ userpicUrl (string) - The profile photo URL for this user. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string.
+ status (string) - The status for this user. Available value is follows. `Active`: The status is active. The user can do anything within his/her permissions. / `Disabled`: The status is disabled. The user cannot do anything. / `Pending`: The status is pending. The user is waiting for approval by the administrator. Therefore, this user cannot do anything.
+ systemPermissions (array[string]) - The list of system permissions which this user have. Only system administrator can get this property
+ tagDelimiter (string) - The tag delimiter character for this user. Available value is follow. `comma`: Separator character is single comma. / `space`: Separator character is single space.
+ textFormat (string) - The text formatting for this user.

## ContentType
+ blog - The site of this content type. Not writable.
    + id (number) - The site ID. Not writable.
+ contentFields (array[ContentFields]) - The list of content fields.
+ createdBy - Created user of this content type. Not writable.
    + displayName (string) - The display name of this content type creator. Not writable.
    + id (number) - The ID of this content type creator. Not writable.
    + userpicUrl (string) - The URL of this content type creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. Not writable.
+ createdDate (string) - Created date of this content type. (format is iso 8601 datetime) Not writable.
+ dataLabel (string) - The Unique ID of the content field that is data label. If not set will be NULL.
+ description (string) - The description of this content type.
+ id (number) - The ID of this content type. Not writable.
+ modifiedBy - Last modified user of this content type. Not writable.
    + displayName (string) - The display name of this content type modifier. Not writable.
    + id (number) - The ID of this content type modifier. Not writable.
    + userpicUrl - The URL of this content type modifier's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. Not writable.
+ modifiedDate (string) - Last modified date of this content type. (format is iso 8601 datetime) Not writable.
+ name (string) - The name of this content type.
+ uniqueID (string) - The unique ID of this content type. Not writable.
+ updatable (boolean) - `true`: Current user can update this content type. / `false`: Current user cannot update this content type.  Not writable.
+ userDisplayOption (boolean) - `true`: Signed-in user can change display options for edit content data screen of this content type in the CMS admin screen. / `false`: Signed-in user cannot change display options for edit content data screen of this content type in the CMS admin screen.


## ContentField
+ blog - The site of this content field. Not writable.
    + id (number) - The site ID. Not writable.
createdBy - Created user of this content field. Not writable.
    + displayName (string) - The display name of this content field creator. Not writable.
    + id (number) - The ID of this content field creator. Not writable.
    + userpicUrl (string) - The URL of this content field creator's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. Not writable.
+ createdDate (string) - Created date of this content field. (format is iso 8601 datetime) Not writable.
+ description (string) - The description of this content field.
+ id (number) - The ID of this content field. Not writable.
+ label (string) - The labeel of this content field.
+ modifiedBy - Last modified user of this content field. Not writable.
    + displayName (string) - The display name of this content field modifier. Not writable.
    + id (number) - The ID of this content field modifier. Not writable.
    + userpicUrl - The URL of this content field modifier's userpic. The userpic will be made by UserpicThumbnailSize and UserpicAllowRect settings. If user does not set own userpic, will be returned empty string. Not writable.
+ modifiedDate (string) - Last modified date of this content field. (format is iso 8601 datetime) Not writable.
+ options (Options) - The field option object. The members of this object are different depending on the type of field.
+ type (string) - The field type. This property can be set only when creating. Available values are follows. `single_line_text`: Single line text field. / `multi_line_text`: Multiple line text field. / `number` Number field. / `url`: URL field. / `date_and_time`: Date and time field. / `date_only`: Date only fiel. / `time_only`: Time only field. / `select_box`: Select box field. / `radio_button`: Radio button field. / `checkboxes`: Checkbox field. / `asset`: Asset (file) type field. / `asset_audio`: Audio asset field. / `asset_video`: Video asset field. / `asset_image`: Image asset field. / `embedded_text`: Embedded text field. / `tags`: Tag field. / `list`: List field. / `tables`: Table field. / `content_type` Content type field. / `categories`: Category set field.
+ uniqueID (string) - The unique ID of this content field. Not writable.
+ updatable (boolean) - `true`: Current user can update this content field. / `false`: Current user cannot update this content field.  Not writable.

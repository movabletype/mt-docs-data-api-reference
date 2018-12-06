# Data Structures

## CustomFields
+ basename (string) - The basename of this customfield.
+ value (string) - The value of this customfield.


## Asset
+ blog
    + id (number) - The ID of the blog that contains this asset.
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
    + id (number) - The ID of the blog that contains this category.
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
    + id (number) - The ID of the blog that contains this comment.
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
    + id (number) - The ID of the blog that contains this folder.
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
    + id (number) - The ID of the blog that contains this entry.
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
+ excerpt (string) - The excerpt value of this entry if one is specified or, if not, an auto-generated excerpt from the Entry Body field followed by an ellipsis (“…”). If an excerpt is auto-generated also note that any HTML is stripped. The length of the auto-generated output of this tag can be set in the blog’s Entry Settings.
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
    + id (number) - The ID of the blog that contains this log.
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
    + id (number) - The ID of the blog that contains this page.
+ body (string) - The contents of this page that the text format is applied. [update in v2] if you want to get the raw contents, you should sent a "no_text_filter=1" parameter with authenticated request.
+ folder (Folder) - The container folder of this page.
+ class (string) - The object class for this page.
+ commentCount (number) - The number of comments for this page.
+ comments (array[Comment]) - The list of comments for this page. The list is sorted by ID of the comment and The parent ID of the comment.
+ createdDate (string) - The created time for this page. (format is iso 8601 datetime)
+ customFields (array[CustomFields]) - The list of customfields data for this page.
+ date (string) - The published time for this page. (format is iso 8601 datetime)
+ excerpt (string) - The excerpt value of this page if one is specified or, if not, an auto-generated excerpt from the page Body field followed by an ellipsis (“…”). If an excerpt is auto-generated also note that any HTML is stripped. The length of the auto-generated output of this tag can be set in the blog’s page Settings.
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

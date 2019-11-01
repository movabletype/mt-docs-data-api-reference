# Group Search

## Search [/search{?search,blog_id,IncludeBlogs,ExcludeBlogs,limit,offset,SearchSortBy,SearchResultDisplay,SearchMaxResults}]

### New in v2.0: Searching entries. [GET]

+ Parameters

    + search (required, string) ... The search term.<p>You can specify search term, like [foo], [foo AND bar], 'foo NOT bar'.</p><p>Also, you can specify category filter, like [category:foo], [category:"hoge OR 'foo bar'"]</p><p>Also, you can specify author filter, like [author:Melody]</p><p>Also, you can specify Custom Fields filter, like [field:address:akasaka] in this case, `address` is basename of Custom Fields. `akasaka` is filter value.</p>
    + blog_id (optional, number) ... The site ID for search. If you want to specify multiple site ID, you must use IncludeBlogs.
    + IncludeBlogs (optional, string) ... The list of the site ID that will be included in the search it should be separated by comma.
    + ExcludeBlogs (optional, string) ... The list of the site ID will be excluded from the search it should be separated by comma.
    + limit = `50` (optional, number) ... Maximum number of entries to retrieve. An integer value between 1 and 2147483647.
    + offset = `0` (optional, number) ... 0-indexed offset. An integer value between 0 and 2147483647.
    + SearchSortBy (optional, string) ... The sort column for the search results. Available value is follows. <dl><dt>created_on</dt><dd>Will sort the entries by the authored on date.</dd><dt>title</dt><dd>Will sort the entries by title.</dd></dl>
    + SearchResultDisplay = `ascend` (optional, string) ... Defines the sort order search results. Available value is follows. <dl><dt>ascend</dt><dd>will list the entries in chronological order (oldest entry at the top)</dd><dt>descend</dt><dd>will list the entries in reverse chronological order (newest entry at the top).</dd></dl>
    + SearchMaxResults = `20` (optional, number) ... Maximum number of entries to retrieve. <p>NOTE: By default, "SearchMaxResults" override is disabled.</p>

+ Response 200 (application/json)

        {
          "totalResults": "4",
          "items": [
            {
              "excerpt": "Lorem ipsum dolor sit amet...",
              "status": "Publish",
              "date": "2015-04-14T17:58:40+09:00",
              "updatable": false,
              "author": {
                "userpicUrl": null,
                "displayName": "Melody Nelson"
              },
              "allowComments": true,
              "comments": [],
              "permalink": "http://localhost/blog/20150407-1/2015/04/post-6.html",
              "body": "<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>",
              "keywords": "",
              "allowTrackbacks": false,
              "id": 20,
              "trackbacks": [],
              "modifiedDate": "2015-04-14T17:58:55+09:00",
              "trackbackCount": "0",
              "categories": [],
              "blog": {
                "id": "1"
              },
              "commentCount": "0",
              "tags": [],
              "basename": "post_6",
              "assets": [],
              "pingsSentUrl": [],
              "title": "Lorem ipsum",
              "class": "entry",
              "createdDate": "2015-04-14T17:58:55+09:00",
              "more": "",
              "customFields": []
            }
          ]
        }


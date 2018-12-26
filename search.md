# Group Search

## Search entries and pages [/search{?search,blog_id,IncludeBlogs,ExcludeBlogs,limit,offset,SearchSortBy,SearchResultDisplay,SearchMaxResults,class,cdSearch}]

### Search entries and pages [GET]
Searching the entries and content data. This endpoint is like a mt-search.cgi, but more faster.

+ Parameters
    + search (required, string) - The search term. You can specify search term, like [foo], [foo AND bar], 'foo NOT bar'.      
        Also, you can specify category filter, like [category:foo], [category:"hoge OR 'foo bar'"]. Also, you can specify author filter, like [author:Melody]  
        Also, you can specify Custom Fields filter, like [field:address:akasaka] in this case, `address` is basename of Custom Fields. `akasaka` is filter value.
    + blog_id (optional, number) - The site ID for search. If you want to specify multiple site ID, you must use IncludeBlogs.
    + IncludeBlogs (optional, string) - The list of the site ID that will be included in the search it should be separated by comma.
    + ExcludeBlogs (optional, string) - The list of the site ID will be excluded from the search it should be separated by comma.
    + limit : `20` (optional, number) - Maximum number of entries to retrieve.
    + offset : `0` (optional, number) - 0-indexed offset.
    + SearchSortBy (optional, string) - The sort column for the search results. Available value is follows.
        * created_on: Will sort the entries by the authored on date.
        * *title: Will sort the entries by title.
    + SearchResultDisplay : `ascend` (optional, string) - Defines the sort order search results. Available value is follows.
        * ascend: will list the entries in chronological order (oldest entry at the top)
        * descend: will list the entries in reverse chronological order (newest entry at the top).
    + SearchMaxResults : `20` (optional, number) - Maximum number of entries to retrieve.  
        **NOTE:** By default, "SearchMaxResults" override is disabled.
    + class (optional, string) - Class name of the object to be searched. Available value is follows.
        * entry: Search results will only contain entries.
        * page: Search results will only contain pages.
    + cdSearch (optional,number) - If `1` specified, searching content data only.

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Entry], fixed-type) - The array of result content.

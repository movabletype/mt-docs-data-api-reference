# Group Stats

This is the PageStats(byPath) resource.

Property Name | Type | Data Type | Database Column | Private | Read Only | Description | Version
------------ | ------------- | ------------ | ------------ | ------------- | ------------ | ------------ | ------------
path | value | String | | | Y | The relative path of the target. | v1
pageviews | value | Number | | | Y | The number of pageviews for the path. This property exists only if request endpoint is "pageviewsForPath". | v1
visits | value | Number | | | Y | The number of visits for the path. This property exists only if request endpoint is "visitsForPath". | v1
archiveType | value | String | mt_fileinfo.fileinfo_archive_type | | Y | The archive type of the path. This property is null if the path is not managed by MT.| v1
entry | Object | - | | | Y | This property is null if "archiveType" is not "Individual". | v1
entry.id | value | Number | mt_entry.entry_id | | Y | The ID of entry. | v1
author | Object | - | | | Y | This property is null if "archiveType" is neither "Author" nor "Author-∗". | v1
author.id | value | Number | mt_author.author_id | | Y | The ID of author. | v1
category | Object | - | | | Y | This property is null if "archiveType" is neither "Category" nor "Category-∗". | v1
category.id | value | Number | mt_category.category_id | | Y | The ID of category. | v1

            {
              "totalResults": 2,
              "items": [
                {
                  "entry": null,
                  "pageviews": "56",
                  "author": null,
                  "path": "/",
                  "title": "Your site",
                  "archiveType": "index",
                  "category": null,
                  "startDate": null
                },
                {
                  "entry": {
                    "id": "1198"
                  },
                  "pageviews": "44",
                  "author": null,
                  "path": "/2015/03/exapmle.html",
                  "title": "Entry title is here",
                  "archiveType": "Individual",
                  "category": null,
                  "startDate": null
                },
              ],
              "totals": {
                "pageviews": "329"
              }
            }

Also, This is the PageStats(byDate) resource.

Property Name | Type | Data Type | Database Column | Private | Read Only | Description | Version
------------ | ------------- | ------------ | ------------ | ------------- | ------------ | ------------ | ------------
date | value | iso 8601 date | | | Y | The date of the target. The format is "YYYY-MM-DD". | v1
pageviews | value | Number | | | Y | The pageviews for the path. This property exists only if request endpoint is "pageviewsForDate". | v1
visits | value | Number | | | Y | The visits for the path. This property exists only if request endpoint is "visitsForDate". | v1

            {
              "totalResults": 6,
              "items": [
                {
                  "visits": "1",
                  "date": "2015-05-20"
                },
                {
                  "visits": "1",
                  "date": "2015-05-21"
                },
                {
                  "visits": "2",
                  "date": "2015-05-22"
                },
                {
                  "visits": "1",
                  "date": "2015-05-23"
                },
                {
                  "visits": "1",
                  "date": "2015-05-24"
                },
                {
                  "visits": "4",
                  "date": "2015-05-25"
                }
              ],
              "totals": {
                "visits": "10"
              }
            }


## visitsForPath [/sites/{site_id}/stats/path/visits{?startDate,endDate,limit,offset,path}]

+ Authorization is required.

### Retrieve visits count for each path from provider. [GET]

+ Parameters
    + site_id (required, Number) ... The site ID.
    + startDate (required, String) ... This is an required parameter. Start date of data. The format is "YYYY-MM-DD".
    + endDate (required, String) ... This is an required parameter. End date of data. The format is "YYYY-MM-DD".
    + limit (optional, Number) ... This is an optional parameter. Maximum number of paths to retrieve. An integer value between 1 and 2147483647. Default is 50.
    + offset (optional, Number) ... This is an optional parameter. 0-indexed offset. An integer value between 0 and 2147483647. Default is 0.
    + path (optional, String) ... This is an optional parameter. The target path of data to retrieve. Default is the path of the current site.

+ Response 200 (application/json)

        {
          "totalResults": 2,
          "items": [
            {
              "entry": null,
              "pageviews": "56",
              "author": null,
              "path": "/",
              "title": "Your site",
              "archiveType": "index",
              "category": null,
              "startDate": null
            },
            {
              "entry": {
                "id": "1198"
              },
              "pageviews": "44",
              "author": null,
              "path": "/2015/03/exapmle.html",
              "title": "Entry title is here",
              "archiveType": "Individual",
              "category": null,
              "startDate": null
            },
          ],
          "totals": {
            "pageviews": "329"
          }
        }

+ Response 401 (application/json)

        {
          "error": {
            "message": "Unauthorized",
            "code": 401
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Readied provider is not found",
            "code": "404"
          }
        }

## visitsForDate [/sites/{site_id}/stats/date/visits{?startDate,endDate,limit,offset,path}]

+ Authorization is required.

### Retrieve visits count for each date from provider. [GET]

+ Parameters
    + site_id (required, Number) ... The site ID.
    + startDate (required, String) ... This is an required parameter. Start date of data. The format is "YYYY-MM-DD".
    + endDate (required, String) ... This is an required parameter. End date of data. The format is "YYYY-MM-DD".
    + limit (optional, Number) ... This is an optional parameter. Maximum number of paths to retrieve. An integer value between 1 and 2147483647. Default is 50.
    + offset (optional, Number) ... This is an optional parameter. 0-indexed offset. An integer value between 0 and 2147483647. Default is 0.
    + path (optional, String) ... This is an optional parameter. The target path of data to retrieve. Default is the path of the current site.

+ Response 200 (application/json)

        {
          "totalResults": 6,
          "items": [
            {
              "visits": "1",
              "date": "2015-05-20"
            },
            {
              "visits": "1",
              "date": "2015-05-21"
            },
            {
              "visits": "2",
              "date": "2015-05-22"
            },
            {
              "visits": "1",
              "date": "2015-05-23"
            },
            {
              "visits": "1",
              "date": "2015-05-24"
            },
            {
              "visits": "4",
              "date": "2015-05-25"
            }
          ],
          "totals": {
            "visits": "10"
          }
        }

+ Response 401 (application/json)

        {
          "error": {
            "message": "Unauthorized",
            "code": 401
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Readied provider is not found",
            "code": "404"
          }
        }

## pageviewsForPath [/sites/{site_id}/stats/path/pageviews{?startDate,endDate,limit,offset,path,uniquePath}]

+ Authorization is required.

### Retrieve pageviews count for each path from provider. [GET]

+ Parameters
    + site_id (required, Number) ... The site ID.
    + startDate (required, String) ... This is an required parameter. Start date of data. The format is "YYYY-MM-DD".
    + endDate (required, String) ... This is an required parameter. End date of data. The format is "YYYY-MM-DD".
    + limit (optional, Number) ... This is an optional parameter. Maximum number of paths to retrieve. An integer value between 1 and 2147483647. Default is 50.
    + offset (optional, Number) ... This is an optional parameter. 0-indexed offset. An integer value between 0 and 2147483647. Default is 0.
    + path (optional, String) ... This is an optional parameter. The target path of data to retrieve. Default is the path of the current site.
    + uniquePath (optional, Boolean) ... This is an optional parameter. If true is given, the MT can return total pageviews for each uniqueness paths. However, that data does not contains page title because its spec. (Sometimes, Google Analytics will return another pageviews by same path.)

+ Response 200 (application/json)

        {
          "totalResults": 2,
          "items": [
            {
              "entry": null,
              "pageviews": "56",
              "author": null,
              "path": "/",
              "title": "Your site",
              "archiveType": "index",
              "category": null,
              "startDate": null
            },
            {
              "entry": {
                "id": "1198"
              },
              "pageviews": "44",
              "author": null,
              "path": "/2015/03/exapmle.html",
              "title": "Entry title is here",
              "archiveType": "Individual",
              "category": null,
              "startDate": null
            },
          ],
          "totals": {
            "pageviews": "329"
          }
        }

+ Response 401 (application/json)

        {
          "error": {
            "message": "Unauthorized",
            "code": 401
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Readied provider is not found",
            "code": "404"
          }
        }

## pageviewsForDate [/sites/{site_id}/stats/date/pageviews{?startDate,endDate,limit,offset,path,uniquePath}]

+ Authorization is required.

### Retrieve pageviews count for each date from provider. [GET]

+ Parameters
    + site_id (required, Number) ... The site ID.
    + startDate (required, String) ... This is an required parameter. Start date of data. The format is "YYYY-MM-DD".
    + endDate (required, String) ... This is an required parameter. End date of data. The format is "YYYY-MM-DD".
    + limit (optional, Number) ... This is an optional parameter. Maximum number of paths to retrieve. An integer value between 1 and 2147483647. Default is 50.
    + offset (optional, Number) ... This is an optional parameter. 0-indexed offset. An integer value between 0 and 2147483647. Default is 0.
    + path (optional, String) ... This is an optional parameter. The target path of data to retrieve. Default is the path of the current site.
    + uniquePath (optional, Boolean) ... This is an optional parameter. If true is given, the MT can return total pageviews for each uniqueness paths. However, that data does not contains page title because its spec. (Sometimes, Google Analytics will return another pageviews by same path.)

+ Response 200 (application/json)

        {
          "totalResults": 6,
          "items": [
            {
              "visits": "1",
              "date": "2015-05-20"
            },
            {
              "visits": "1",
              "date": "2015-05-21"
            },
            {
              "visits": "2",
              "date": "2015-05-22"
            },
            {
              "visits": "1",
              "date": "2015-05-23"
            },
            {
              "visits": "1",
              "date": "2015-05-24"
            },
            {
              "visits": "4",
              "date": "2015-05-25"
            }
          ],
          "totals": {
            "visits": "10"
          }
        }

+ Response 401 (application/json)

        {
          "error": {
            "message": "Unauthorized",
            "code": 401
          }
        }

+ Response 404 (application/json)

        {
          "error": {
            "message": "Readied provider is not found",
            "code": "404"
          }
        }

## getProvider [/sites/{site_id}/stats/provider]

+ Authorization is required.

### Retrieve a current effective provider. [GET]

+ Parameters
    + site_id (required, Number) ... The site ID.

+ Response 200 (application/json)

        {
          "id": "GoogleAnalytics"
        }

+ Response 401 (application/json)

        {
          "error": {
            "message": "Unauthorized",
            "code": 401
          }
        }


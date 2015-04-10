# Group Themes

This is the Themes resource. The Themes resource is not stored in the database.

Property Name | Type | Data Type | Database Column | Private | Read Only | Description | Version
------------ | ------------- | ------------ | ------------ | ------------- | ------------ | ------------ | ------------
authorLink | value | string | - | Y | Y | The author link of this theme. | v2
authorName | value | string | - | Y | Y | The author name of this theme. | v2
current | value | boolean | - | Y | Y | | *DEPRECATAD*
description | value | string | - | Y | Y | The description for this theme. | v2
id | value | string | - | Y | Y | The ID for this theme. | v2
inUse | value | boolean | - | Y | Y | This property is displayed only in system scope. <dl><dt>true</dt><dd>This theme is in used by any site.</dd><dt>false</dt><dd>This theme is not in use.</dd></dl> | v2
label | value | string | - | Y | Y | The label for this theme. | v2
uninstallable | value | boolean | - | Y | Y | <dl><dt>true</dt><dd>This theme is able to uninstall.</dd><dt>false</dt><dd>This theme is not able to uninstall.</dd></dl> | v2
version | value | string | - | Y | Y | The version number for this theme. | v2

        {
          "authorName": "Six Apart, Ltd.",
          "authorLink": "http://www.movabletype.org/",
          "version": "1.14",
          "description": "\"Rainier\" is a customizable Responsive Web Design theme, designed for blogs. In addition to multi-device viewing support, provided by Media Query (CSS), Movable Type functions make customizing navigational contents as well as image elements, such as logos, headers, very simple.",
          "uninstallable": false,
          "inUse": true,
          "id": "rainier",
          "label": "Rainier"
        }

## listThemes [/themes]

### New in v2.0: Retrieve a list of themes. [GET]

+ Authentication is required

**Permissions**

+ manage_themes

+ Request
    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (application/json)

        {
          "totalResults": 9,
          "items": [
            {
              "authorName": "Six Apart, Ltd.",
              "authorLink": "http://www.movabletype.org/",
              "version": "1.14",
              "description": "\"Rainier\" is a customizable Responsive Web Design theme, designed for blogs. In addition to multi-device viewing support, provided by Media Query (CSS), Movable Type functions make customizing navigational contents as well as image elements, such as logos, headers, very simple.",
              "uninstallable": false,
              "inUse": true,
              "id": "rainier",
              "label": "Rainier"
            },
            {
              "authorName": "Six Apart, Ltd.",
              "authorLink": "http://www.movabletype.org/",
              "version": "1.3",
              "description": "Create a blog portal that aggregates contents from several blogs in one website.",
              "uninstallable": false,
              "inUse": false,
              "label": "Classic Website",
              "id": "classic_website"
            },
            {
              "authorName": "Six Apart, Ltd.",
              "authorLink": "http://www.sixapart.com/",
              "version": "1.11",
              "description": "Professional designed, well structured and easily adaptable web site. You can customize default pages, footer and top navigation easily.",
              "uninstallable": false,
              "inUse": false,
              "label": "Professional Website",
              "id": "professional_website"
            },
            {
              "authorName": "Six Apart, Ltd",
              "authorLink": "http://www.sixapart.com/",
              "version": "1.44",
              "description": "Eiger is a customizable Responsive Web Design theme, designed for blogs and corporate websites. In addition to multi-device viewing support, provided via Media Query (CSS), Movable Type functions make customizing navigational contents as well as image elements, such as logos, headers or banners, very simple.",
              "uninstallable": false,
              "inUse": false,
              "label": "Eiger",
              "id": "eiger"
            },
            {
              "authorName": "Six Apart, Ltd.",
              "authorLink": "http://www.movabletype.org/",
              "version": "1.3",
              "description": "Pico is a microblogging theme, designed for keeping things simple to handle frequent updates. To put the focus on content we've moved the sidebars below the list of posts.",
              "uninstallable": false,
              "inUse": false,
              "label": "Pico",
              "id": "pico"
            },
            {
              "authorName": "Six Apart, Ltd.",
              "authorLink": "http://www.movabletype.org/",
              "version": "1.3",
              "description": "A traditional blogging design that comes with plenty of styles and a selection of 2 column / 3 column layouts. Best for use in standard blog publishing applications.",
              "uninstallable": false,
              "inUse": false,
              "label": "Classic Blog",
              "id": "classic_blog"
            },
            {
              "authorName": "Six Apart, Ltd.",
              "authorLink": "http://www.sixapart.com/",
              "version": "1.01",
              "description": "Increase reader engagement - deploy features to your website that make it easier for your readers to engage with your content and your company.",
              "uninstallable": false,
              "inUse": false,
              "label": "Community Blog",
              "id": "mt_community_blog"
            },
            {
              "authorName": "Six Apart, Ltd.",
              "authorLink": "http://www.sixapart.com/",
              "version": "1.01",
              "description": "Create forums where users can post topics and responses to topics.",
              "uninstallable": false,
              "inUse": false,
              "label": "Community Forum",
              "id": "mt_community_forum"
            },
            {
              "authorName": "Six Apart, Ltd.",
              "authorLink": "http://www.sixapart.com/",
              "version": "1.11",
              "description": "Create a blog as a part of structured website. This works best with Professional Website theme.",
              "uninstallable": false,
              "inUse": false,
              "label": "Professional Blog",
              "id": "professional_blog"
            }
          ]
        }


## getTheme [/themes/:theme_id]

### New in v2.0: Retrieve a single theme by its ID. [GET]

+ Authentication is required

**Permissions**

+ manage_themes

+ Parameters
    + theme_id (required, string) ... The theme ID.

+ Request
    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (application/json)

        {
          "authorName": "Six Apart, Ltd.",
          "authorLink": "http://www.movabletype.org/",
          "version": "1.14",
          "description": "\"Rainier\" is a customizable Responsive Web Design theme, designed for blogs. In addition to multi-device viewing support, provided by Media Query (CSS), Movable Type functions make customizing navigational contents as well as image elements, such as logos, headers, very simple.",
          "uninstallable": false,
          "inUse": false,
          "id": "rainier",
          "label": "Rainier"
        }

+ Response 404 (application/json)

        {
          "error": {
            "code": 404,
            "message": "Theme not found"
          }
        }


## applyThemeToSite [/sites/:site_id/themes/:theme_id/apply]

### New in v2.0: Apply a theme to site. [POST]

+ Authentication is required

**Permissions**

+ manage_themes

+ Parameters
    + site_id (required, number) ... The site ID.
    + theme_id (required, string) ... The theme ID.

+ Request
    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (appication/json)

        {
          "status": "success"
        }

+ Response 404 (application/json)

        {
          "error": {
            "code": 404,
            "message": "Theme not found"
          }
        }


## uninstall_theme [/themes/:theme_id]

### Uninstall a specified theme from the MT.  [DELETE]

+ Authentication is required
+ When successful, you can take Themes Resource that was deleted. However, this theme is already removed from the Movable Type. You cannot apply this theme to.

**Permissions**

+ manage_themes

+ Parameters
    + theme_id (required, string) ... The theme ID.

+ Request
    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (appication/json)

        {
          "authorName": null,
          "authorLink": "",
          "version": "1.0",
          "description": "",
          "uninstallable": true,
          "inUse": false,
          "id": "theme_from_test",
          "label": "Theme from Rainier"
        }

+ Response 404 (application/json)

        {
          "error": {
            "code": 404,
            "message": "Theme not found"
          }
        }


## exportSiteTheme [/sites/:site_id/export_theme]

### New in v2.0: Export site's theme. [POST]

+ Authentication is required
+ This endpoint will export current theme elements of specified site into theme directory.

**Permissions**

+ manage_themes

+ Parameters
    + site_id (required, number) ... The site ID.

+ Request
    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (appication/json)

        {
          "status": "success"
        }

+ Response 404 (application/json)

        {
          "error": {
            "code": 404,
            "message": "Theme not found"
          }
        }




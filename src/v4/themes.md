# Group Themes

## Theme Collecion [/themes]

### Retrieve a list of themes [GET]
**Authentication required**
Retrieve a list of all of the installed theme. This  endpoint requires following permissions.

+ Manage Themes

+ Request
    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (application/json)

    + Attributes
        + totalResults: 1 (number) - Total record count of this request.
        + items (array[Theme], fixed-type) - The array of result content.

+ Response 403 (application/json)

    Do not have permission to retrieve themes.

    + body


## Theme [/themes/{theme_id}]

+ Parameters
    + theme_id: `jungfrau` (string) - The theme ID.

### Fetch single theme. [GET]
***Authentication required***

Retrieve a single theme by its ID. This  endpoint requires following permissions.

+ Manage Themes

+ Request
    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (application/json)

    + Attributes (Theme)

+ Response 404 (application/json)

    Theme not found.

    + Body

### Uninstall theme [DELETE]
**Authentication required**

Uninstall theme from MT.  
When successful, you can take Theme Resource that was deleted. However, this theme is already removed from the Movable Type. You cannot apply this theme to.

This endpoint requires following permissions.

* Manage Themes

+ Request
    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (appication/json)

    + Attributes (Theme)

+ Response 404 (application/json)

    Theme not found.

    + Body


## Apply theme [/sites/{site_id}/themes/{theme_id}/apply]

+ Parameters
    + site_id (required, number) ... The site ID.
    + theme_id (required, string) ... The theme ID.

### Apply theme [POST]
**Authentication required**

Apply theme to site. This endpoint requires following permission.

+ Manage Themes

+ Request
    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (appication/json)

    + Attributes
        + status: `success` (string) - Result

+ Response 404 (application/json)

    Site or theme not found.

    + Body



## Export theme [/sites/{site_id}/export_theme]

+ Parameters
    + site_id (required, number) ... The site ID.

### Export theme [POST]
**Authentication required**

Exporting current theme element as a new theme. This endpoint requires following permissions.

* Manage Themes

:::note
This endpoint will export current theme elements of specified site into theme directory.
:::

+ Request
    + Headers

            X-MT-Authorization: MTAuth accessToken=<Token>

+ Response 200 (appication/json)

    + Attributes
        + status: `success` (string) - Result

+ Response 404 (application/json)

    Theme not found.

    + Body

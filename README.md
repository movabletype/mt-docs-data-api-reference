# mt-docs-data-api-reference

[![Build Status](https://travis-ci.org/movabletype/mt-docs-data-api-reference.svg?branch=master)](https://travis-ci.org/movabletype/mt-docs-data-api-reference)

## Usage

### Install

* Build Dockerfile

```sh
$ make install
```

### Build HTML files

* Run aglio command

```sh
$ make build
```

### Start development server

* Start http server whose port is 8080
* Build HTML files every after changing Markdown files

```sh
$ make start-dev-server
```

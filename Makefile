install:
	yarn install

build:
	yarn build

dev-server:
	yarn dev-server

docker-install:
	docker-compose build

docker-build:
	docker-compose run docs

docker-dev-server:
	docker-compose run docs yarn dev-server


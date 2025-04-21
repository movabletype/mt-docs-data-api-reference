install:
	docker-compose build

build:
	docker-compose run --rm docs bash -c 'npm run index && npm run redoc'

start-dev-server:
	docker-compose up

clean:
	docker-compose rm -f -v


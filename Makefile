.PHONY: build run test lint clean

build:
	docker compose build

run:
	docker compose up -d

stop:
	docker compose down

logs:
	docker compose logs -f

test:
	npm test

lint:
	npm run lint

clean:
	docker compose down -v
	rm -rf node_modules
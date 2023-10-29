.PHONY: help

help: ## Display this help screen
	@grep -E '^[a-z.A-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

install-magento-cloud: ## installs magento cloud
	curl -sS https://accounts.magento.cloud/cli/installer | php

install-aio: ## installs aio and friends
	npm install -g @adobe/aio-cli
	aio telemetry on

install-aio-apimesh: ## installs the api mesh extension
	aio plugins:install @adobe/aio-cli-plugin-api-mesh

install: install-magento-cloud ## installs dependancies
	npm install

dev: ## runs a development server
	npx aio app run

serve: ## runs the server at 9090
	node server.js

serve-dev: ## runs dev and serve 
	make serve &
	make dev
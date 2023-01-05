LIB_DIR ?= lib
APP_TAG ?= aimlsse-base
APP_VERSION ?= latest

build:
	docker build ${LIB_DIR} --tag ${APP_TAG}:${APP_VERSION}
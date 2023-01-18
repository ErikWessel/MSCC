LIB_DIR ?= lib
API_DIR ?= aimlsse-api

build:
	python -m build "${LIB_DIR}/aimlsse-api"
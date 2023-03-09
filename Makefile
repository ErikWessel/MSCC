LIB_DIR ?= lib
API_DIR ?= aimlsse-api
PYPI_PACKAGE_DIR ?= packages

build:
	python -m build "${LIB_DIR}/aimlsse-api"
	if [ ! -d ${PYPI_PACKAGE_DIR} ]; then mkdir ${PYPI_PACKAGE_DIR}; fi
	cp -u ${LIB_DIR}/aimlsse-api/dist/* ${PYPI_PACKAGE_DIR}
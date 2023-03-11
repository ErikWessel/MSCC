build-local:
	python3 -m pip install -r requirements.txt
	python3 -m build aimlsse-api
build-docker:
	docker build -t aimlsse-lib-builder .
	docker run --rm -v "${PWD}:/aimlsse" --name aimlsse-lib-builder aimlsse-lib-builder

.PHONY: dev build

dev:
	hugo server --buildFuture --environment development --baseURL http://localhost:1313/ --bind 127.0.0.1 --port 1313 --disableFastRender --renderToMemory

build:
	hugo --cleanDestinationDir

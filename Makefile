.PHONY: build
build:
	docker build -t sce -f Dockerfile .

.PHONY: run
run:
	docker run -d -p 3004:80 --rm --name sce sce || :

.PHONY: exec
exec:
	docker exec -it sce /bin/bash || :

.PHONY: stop
stop:
	docker stop sce || :

.PHONY: logs
logs:
	docker logs -f sce || :

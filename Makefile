.PHONY: fmt lint build run

fmt:
	go fmt ./...

lint:
	go vet ./...

build:
	go build -o bin/app ./...

test:
	go test ./...

run:
	go run main.go

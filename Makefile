.PHONY: all clean build lint

all: build

clean:
	rm -rf bin

build:
	env GOOS=linux GOARCH=amd64 go build -o bin/main main.go
	@echo "build complete"

lint:
	@golangci-lint run

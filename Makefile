
.PHONY: generate

all: format generate

format:
	cd feza; clang-format -i feza.proto

generate:
	cd feza; protoc --go_out=plugins=grpc:. --go_opt=paths=source_relative feza.proto

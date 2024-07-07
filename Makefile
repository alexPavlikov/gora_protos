.PHONY: generate
generate:
	protoc -I proto proto/geo-search.proto --go_out=./gen/go/ --go_opt=paths=source_relative --go-grpc_out=./gen/go --go-grpc_opt=paths=source_relative
	protoc -I proto proto/geo.proto --go_out=./gen/go/ --go_opt=paths=source_relative --go-grpc_out=./gen/go --go-grpc_opt=paths=source_relative

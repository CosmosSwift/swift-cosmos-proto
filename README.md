# CosmosSwiftProto

This package aggregates all proto files from Cosmos and Tendermint, so that we can build 3 libs with messages and gRPC swift implemenations:
- Cosmos
- IBC
- Tendermint


## Generation process

```
./scripts/generate.sh
```


## Building your project

There are two options to use the swift proto files. Either you use the library, or you copy the files directy in your project.

### Use the library
```swift
dependencies: [
    .package(name: "CosmosSwiftProto", url: "https://github.com/cosmosswift/swift-proto.git", branch: "main"),
]
```

### Copy the files to your project
After copying the `.pb.swift` files into your project, you will need
to add the
[SwiftProtobuf library](https://github.com/apple/swift-protobuf) to
your project to support the generated code.  If you are using the
Swift Package Manager, you should first check what version of
`protoc-gen-swift` you are currently using:

```
$ protoc-gen-swift --version
protoc-gen-swift 1.0.1
```

And then add a dependency to your Package.swift file.  Adjust the
`Version()` here to match the `protoc-gen-swift` version you checked
above:

```swift
dependencies: [
    .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
]
```

If you are using Xcode, then you should:

* Add the Swift source files generated from your protos directly to your
  project.
* Clone the SwiftProtobuf package.
* Add the SwiftProtobuf target from the Xcode project from that package to your
  project.
  

# TODO


1. import proto files from various required locations
2. do a diff between old and new files
3. 

-> set up a docker container that will clone relevant repos, compare proto files 

## gRPC
https://github.com/grpc/grpc-swift

### Using TLS
https://github.com/grpc/grpc-swift/blob/main/docs/tls.md
### Keepalive
https://github.com/grpc/grpc-swift/blob/main/docs/keepalive.md

### various links
https://github.com/apple/swift-protobuf/blob/main/Documentation/API.md
https://github.com/apple/swift-protobuf/blob/main/Documentation/PLUGIN.md


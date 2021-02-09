// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "swift-cosmos-proto",
    platforms: [
        .macOS(.v10_15),
    ],
    products: [
//        .library(name: "TendermintProto", targets: ["TendermintProto"]),
//        .library(name: "IBCProto", targets: ["IBCProto"]),
        .library(name: "CosmosProto", targets: ["CosmosProto"]),
    ],
    dependencies: [
    .package(name: "SwiftProtobuf", url: "https://github.com/apple/swift-protobuf.git", from: "1.6.0"),
      .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.0.0")
    ],
    targets: [

//        .target(
//            name: "TendermintProto",
//            dependencies: [
//                .product(name: "SwiftProtobuf", package: "SwiftProtobuf"),
//                .product(name: "GRPC", package: "grpc-swift")            ]
//        ),
        .target(
            name: "CosmosProto",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "SwiftProtobuf"),
//                .target(name: "TendermintProto"),
                .product(name: "GRPC", package: "grpc-swift")            ]
        ),
//        .target(
//            name: "IBCProto",
//            dependencies: [
//                 .product(name: "SwiftProtobuf", package: "SwiftProtobuf"),
//                .target(name: "CosmosProto"),
//                .target(name: "TendermintProto"),
//                .product(name: "GRPC", package: "grpc-swift")         ]
//        ),
    ]
)


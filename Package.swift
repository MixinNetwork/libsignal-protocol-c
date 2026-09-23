// swift-tools-version: 6.3.3

import PackageDescription

let package = Package(
    name: "libsignal-protocol-c",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "libsignal-protocol-c",
            targets: ["libsignal-protocol-c"]),
    ],
    targets: [
        .target(
            name: "libsignal-protocol-c",
            dependencies: [],
            path: ".",
            exclude: [
                "src/CMakeLists.txt",
                "src/curve25519/CMakeLists.txt",
                "src/protobuf-c/CMakeLists.txt",
                "src/libsignal-protocol-c.pc.in",
            ],
            sources: ["src"],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("src"),
                .headerSearchPath("src/curve25519"),
                .headerSearchPath("src/curve25519/ed25519"),
                .headerSearchPath("src/protobuf-c"),
                .headerSearchPath("src/curve25519/ed25519/nacl_includes"),
                .headerSearchPath("src/curve25519/ed25519/additions"),
                .headerSearchPath("src/curve25519/ed25519/additions/generalized"),
            ]),
    ]
)

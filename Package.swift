// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FisherYates",
    products: [
        .library(
            name: "FisherYates", targets: ["FisherYates"]),
    ],
    targets: [
        .target(
            name: "FisherYates",
            dependencies: []),
        .testTarget(
            name: "FisherYatesTests",
            dependencies: ["FisherYates"]),
    ]
)

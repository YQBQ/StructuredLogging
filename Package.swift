// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "StructuredLogging",
    products: [
        .library(name: "StructuredLogging", targets: ["StructuredLogging"])
    ],
    targets: [
        .target(name: "StructuredLogging", dependencies: []),
        .testTarget(name: "StructuredLoggingTests", dependencies: ["StructuredLogging"]),
    ]
)

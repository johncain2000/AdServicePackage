// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.


import PackageDescription

let package = Package(
    name: "AdServicePackage",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AdServicePackage",
            targets: ["AdServicePackage"]),
    ],
    dependencies: [
        // Add dependencies here if necessary
    ],
    targets: [
        .target(
            name: "AdServicePackage",
            dependencies: []),
        .testTarget(
            name: "AdServicePackageTests",
            dependencies: ["AdServicePackage"]),
    ]
)

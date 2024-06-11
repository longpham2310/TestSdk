// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestSdk",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TestSdk",
            targets: ["TestSdk", "self_ios_sdk"]),
    ],
    dependencies:  [
//        .package(url: "https://github.com/d-date/google-mlkit-swiftpm", from: "3.2.1")
        .package(url: "https://github.com/AndyQ/NFCPassportReader.git")
        .package(url: "https://github.com/joinself/sss-swift.git")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TestSdk", dependencies: ["self_ios_sdk"]),
//        .binaryTarget(
//            name: "self_ios_sdk",
//            url: "https://github.com/joinself/demo-publish-libs/releases/download/0.1/self_ios_sdk.xcframework.zip",
//            checksum: "094ecfdeacfbd88b1bdcd09390719dd87cab25588efe2abfe2347f3c436bbf60"
//        ),
            .binaryTarget(
                name: "self_ios_sdk",
                path: "self_ios_sdk.framework"
            ),
        .testTarget(
            name: "TestSdkTests",
            dependencies: ["TestSdk"]),
    ]
)

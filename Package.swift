// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestSdk",
    defaultLocalization: "en",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TestSdk",
            targets: ["TestSdk", "MyLib"]),
    ],
    dependencies:  [
//        .package(url: "https://github.com/d-date/google-mlkit-swiftpm", branch: "main"),
        .package(url: "https://github.com/AndyQ/NFCPassportReader.git", branch: "main"),
        .package(url: "https://github.com/joinself/sss-swift.git", branch: "master"),
        .package(url: "https://github.com/Flipboard/FLAnimatedImage.git", branch: ("main"))
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "TestSdk", dependencies: ["MyLib"]),
//        .binaryTarget(
//            name: "self_ios_sdk",
//            url: "https://github.com/joinself/demo-publish-libs/releases/download/0.1/self_ios_sdk.xcframework.zip",
//            checksum: "094ecfdeacfbd88b1bdcd09390719dd87cab25588efe2abfe2347f3c436bbf60"
//        ),
//            .binaryTarget(
//                name: "self_ios_sdk",
//                url: "https://github.com/joinself/demo-publish-libs/releases/download/0.1/self_ios_sdk.xcframework.zip",
//                checksum: "094ecfdeacfbd88b1bdcd09390719dd87cab25588efe2abfe2347f3c436bbf60"
////                path: "self_ios_sdk.framework"
//            ),
        .binaryTarget(
                name: "MyLib",
                url: "https://github.com/longpham2310/testlib/releases/download/0.0.2/MyLib.xcframework.zip",
                checksum: "96a2c94841332f56a7d6ce1045ab7eb92c752d5bdd3827e79cc991ef9bb52a3c"
//                path: "self_ios_sdk.framework"
            ),
        .target(name: "Example",
               dependencies: ["TestSdk"],
               path: "Example/Example.xcodeproj"),
        .testTarget(
            name: "TestSdkTests",
            dependencies: ["TestSdk"]),
    ]
)

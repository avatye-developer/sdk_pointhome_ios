// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AvatyePointHome",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "AvatyePointHome",
            targets: ["AvatyePointHomeTarget"]
        ),
    ],
    dependencies: [
        .package(
            name: "AvatyeAdCash",
            url: "https://github.com/avatye-developer/sdk_adcash_ios",
            .upToNextMajor(from: "4.0.3")
        )
    ],
    targets: [
        .binaryTarget(
            name: "AvatyePointHomeSdk",
            path: "./AvatyePointHome.xcframework"
         ),
        .target(
            name: "AvatyePointHomeTarget",
            dependencies: [
                .product(name: "AdPopcornSSP", package: "AvatyeAdCash"),
                .product(name: "AvatyeAdCashTarget", package: "AvatyeAdCash"),
                "AvatyePointHomeSdk"
            ],
            path: "./Sources"
        )
    ]
)

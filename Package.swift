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
            targets: ["AvatyeAdCash", "AvatyePointHomeTarget"]
        ),
    ],
    dependencies: [
        .package(name: "AvatyeAdCash",
                 url: "https://github.com/avatye-developer/sdk_adcash_ios",
                 Version(4,0,3)..<Version(5,0,0))
    ],
    targets: [
        .target(
            name: "AvatyeAdCash",
            dependencies: [
                .product(name: "AvatyeAdCash", package: "AvatyeAdCash"),
            ]
        ),
        .binaryTarget(
            name: "AvatyePointHomeTarget",
            path: "./AvatyePointHome.xcframework"
        )
    ]
)

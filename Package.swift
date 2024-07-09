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
            url: "https://github.com/YourGitHubUser/AvatyeAdCash.git",
            .upToNextMajor(from: "1.0.0")
        )
    ],
    targets: [
        .target(
            name: "AvatyePointHomeTarget",
            dependencies: [
                "AdPopcornSSP",
                "AvatyeAdCashTarget"
            ]
//            path: "./Sources"
        )
    ]
)

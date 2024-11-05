// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AvatyePointHome",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AvatyePointHome",
            targets: ["AvatyePointHomeWrapper"]
        ),
    ],
    dependencies: [
        .package(
            name: "AvatyeAdCash",
            url: "https://github.com/avatye-developer/sdk_adcash_ios",
            .exact("3.1.13")
        ),
        .package(
            name: "SVGKit",
            url: "https://github.com/SVGKit/SVGKit.git",
            .upToNextMajor(from: "3.0.0") // 가능한 버전을 선택
        )
    ],
    targets: [
        .binaryTarget(
            name: "AvatyePointHomeTarget",
            path: "./AvatyePointHome.xcframework"
        ),
        .target(
            name: "AvatyePointHomeWrapper",
            dependencies: [
                "AvatyePointHomeTarget",
                .product(name: "AvatyeAdCash", package: "AvatyeAdCash"),
            ],
            path: "./Sources/AvatyePointHomeWrapper" // SPM 요구사항을 만족시키기 위한 빈 디렉토리
        )
    ]
)

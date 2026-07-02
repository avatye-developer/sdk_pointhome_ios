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
      url: "https://github.com/IGAWorksDev/ap-ssp-sdk-ios-spm-objc",
      .upToNextMinor(from: "2.11.9")
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
        .product(name: "AdPopcornSSPSDK", package: "ap-ssp-sdk-ios-spm-objc")
      ],
      path: "./Sources/AvatyePointHomeWrapper" // SPM 요구사항을 만족시키기 위한 빈 디렉토리
    )
  ]
)


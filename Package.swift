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
  targets: [
    .binaryTarget(
      name: "AvatyePointHomeTarget",
      path: "./AvatyePointHome.xcframework"
    ),
    .target(
      name: "AvatyePointHomeWrapper",
      dependencies: [
        "AvatyePointHomeTarget"
      ],
      path: "./Sources/AvatyePointHomeWrapper" // SPM 요구사항을 만족시키기 위한 빈 디렉토리
    )
  ]
)

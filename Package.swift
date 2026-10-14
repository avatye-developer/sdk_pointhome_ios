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
    // Bidmad 선택 설치 어댑터. 본체(AvatyePointHome)를 함께 가져온다.
    // BidmadSDK·OpenBiddingHelper 는 SPM 배포가 없어 호스트 앱이 CocoaPods 로 설치한다(6.13.6 이상 6.14 미만).
    .library(
      name: "AvatyePointHomeBidmad",
      targets: ["AvatyePointHomeBidmadWrapper"]
    ),
  ],
  targets: [
    .binaryTarget(
      name: "AvatyePointHomeTarget",
      path: "./AvatyePointHome.xcframework"
    ),
    .binaryTarget(
      name: "AvatyePointHomeBidmadTarget",
      path: "./AvatyePointHomeBidmad.xcframework"
    ),
    .target(
      name: "AvatyePointHomeWrapper",
      dependencies: [
        "AvatyePointHomeTarget"
      ],
      path: "./Sources/AvatyePointHomeWrapper" // SPM 요구사항을 만족시키기 위한 빈 디렉토리
    ),
    .target(
      name: "AvatyePointHomeBidmadWrapper",
      dependencies: [
        "AvatyePointHomeBidmadTarget",
        "AvatyePointHomeWrapper"
      ],
      path: "./Sources/AvatyePointHomeBidmadWrapper" // SPM 요구사항을 만족시키기 위한 빈 디렉토리
    )
  ]
)

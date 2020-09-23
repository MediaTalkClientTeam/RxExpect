// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "RxExpect",
  platforms: [
    .iOS(.v9), .macOS(.v10_10), .tvOS(.v9)
  ],
  products: [
    .library(name: "RxExpect", targets: ["RxExpect"]),
  ],
  dependencies: [
    .package(url: "https://github.ncsoft.com/MediaTalkClientTeam/RxSwift.git", .revision("7b410ba9fad7d7201e0a94e692a405c10e976314")),
  ],
  targets: [
    .target(name: "RxExpect", dependencies: ["RxSwift", "RxTest"]),
    .testTarget(name: "RxExpectTests", dependencies: ["RxExpect"])
  ],
  swiftLanguageVersions: [.v5]
)

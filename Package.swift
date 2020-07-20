// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "RxExpect",
  platforms: [
    .iOS(.v8), .macOS(.v10_10), .tvOS(.v9)
  ],
  products: [
    .library(name: "RxExpect", targets: ["RxExpect"]),
  ],
  dependencies: [
    .package(url: "https://github.ncsoft.com/MediaTalkClientTeam/RxSwift.git", .revision("f8d69339ba6081e0557b40a58856cc4414fa048c")),
  ],
  targets: [
    .target(name: "RxExpect", dependencies: ["RxSwift", "RxTest"]),
    .testTarget(name: "RxExpectTests", dependencies: ["RxExpect"])
  ],
  swiftLanguageVersions: [.v5]
)

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
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .revision("aa5917a1b359b7de47d6b91424d98350849d1b55")),
  ],
  targets: [
    .target(name: "RxExpect", dependencies: ["RxSwift", "RxTest"]),
    .testTarget(name: "RxExpectTests", dependencies: ["RxExpect"])
  ],
  swiftLanguageVersions: [.v5]
)

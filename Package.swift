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
    .package(url: "https://github.com/ReactiveX/RxSwift.git", .revision("06e004a45db47fce1a75894895e12f3adef99cbd")),
  ],
  targets: [
    .target(name: "RxExpect", dependencies: ["RxSwift", "RxTest"]),
    .testTarget(name: "RxExpectTests", dependencies: ["RxExpect"])
  ],
  swiftLanguageVersions: [.v5]
)

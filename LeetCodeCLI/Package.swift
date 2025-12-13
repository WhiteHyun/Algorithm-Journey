// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "LeetCodeCLI",
  platforms: [.macOS(.v13)],
  dependencies: [
    .package(url: "https://github.com/apple/swift-argument-parser", from: "1.2.0"),
    .package(url: "https://github.com/tuist/XcodeProj", from: "8.0.0"),
  ],
  targets: [
    .executableTarget(
      name: "leetcode",
      dependencies: [
        .product(name: "ArgumentParser", package: "swift-argument-parser"),
        .product(name: "XcodeProj", package: "XcodeProj"),
      ],
      path: "Sources/LeetCodeCLI"
    ),
  ]
)

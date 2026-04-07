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
    // Library target for testable code
    .target(
      name: "LeetCodeCore",
      dependencies: [
        .product(name: "XcodeProj", package: "XcodeProj"),
      ],
      path: "Sources/LeetCodeCore",
    ),
    // Executable target
    .executableTarget(
      name: "leetcode",
      dependencies: [
        "LeetCodeCore",
        .product(name: "ArgumentParser", package: "swift-argument-parser"),
      ],
      path: "Sources/LeetCodeCLI",
    ),
    // Test target
    .testTarget(
      name: "LeetCodeCoreTests",
      dependencies: ["LeetCodeCore"],
      path: "Tests/LeetCodeCoreTests",
    ),
  ],
)

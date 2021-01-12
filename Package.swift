// swift-tools-version:5.1
import PackageDescription

let package = Package(
  name: "Loft_Deque",
  products: [
    .library(
      name: "Loft_Deque",
      targets: ["Loft_Deque"]),
  ],
  dependencies: [
    .package(
      url: "https://github.com/loftware/StandardLibraryProtocolChecks",
      from: "0.1.0"),
  ],
  targets: [
    .target(
      name: "Loft_Deque",
      path: "Sources"),
    .testTarget(
      name: "Test_Deque",
      dependencies: [
        "Loft_Deque",
        "LoftTest_StandardLibraryProtocolChecks"
      ],
      path: "Tests"),
  ]
)

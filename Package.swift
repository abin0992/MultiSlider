// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "MultiSlider",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(name: "MultiSlider", targets: ["MultiSlider"]),
    ],
    dependencies: [
        .package(url: "https://github.com/abin0992/SweeterSwift", .branch("ab-SPM-fix")),
        .package(url: "https://github.com/yonat/AvailableHapticFeedback", from: "1.0.2"),
    ],
    targets: [
        .target(name: "MultiSlider", dependencies: ["SweeterSwift", "AvailableHapticFeedback"], path: "Sources"),
    ],
    swiftLanguageVersions: [.v5]
)

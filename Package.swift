// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "VisualEffectView",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "VisualEffectView",
            targets: ["VisualEffectView"])
    ],
    targets: [
        .target(
            name: "VisualEffectView",
            dependencies: []),
    ]
)

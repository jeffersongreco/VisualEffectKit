// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "VisualEffectKit",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(
            name: "VisualEffectKit",
            targets: ["VisualEffectKit"])
    ],
    targets: [
        .target(
            name: "VisualEffectKit",
            dependencies: []),
    ]
)

// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Hodler",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "Hodler",
            targets: ["Hodler"]),
    ],
    dependencies: [
        .package(url: "https://github.com/just-software-dev/BitcoinCore.Swift.git", branch: "master"),
        .package(url: "https://github.com/just-software-dev/HsCryptoKit.Swift.git", branch: "main"),
    ],
    targets: [
        .target(
            name: "Hodler",
            dependencies: [
                .product(name: "BitcoinCore", package: "BitcoinCore.Swift"),
                .product(name: "HsCryptoKit", package: "HsCryptoKit.Swift"),
            ]
        ),
    ]
)

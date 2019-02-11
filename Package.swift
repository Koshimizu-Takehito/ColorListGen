// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ColorListGen",
    dependencies: [
        .package(url: "https://github.com/Koshimizu-Takehito/ColorSetKit.git", from: "0.1.0"),
    ],
    targets: [
        .target(
            name: "ColorListGen",
            dependencies: ["ColorSetKit"]),
    ]
)
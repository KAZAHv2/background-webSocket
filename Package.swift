// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "BackgoundWebSocet",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "BackgoundWebSocet",
            targets: ["websocketBgPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "websocketBgPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/websocketBgPlugin"),
        .testTarget(
            name: "websocketBgPluginTests",
            dependencies: ["websocketBgPlugin"],
            path: "ios/Tests/websocketBgPluginTests")
    ]
)
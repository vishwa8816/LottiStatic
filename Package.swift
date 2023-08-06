// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LottiStatic",
    platforms: [.iOS("14.0")],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LottiStatic",
            targets: ["LottiStatic", "Lottie"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "LottiStatic",
            dependencies: []),
        .binaryTarget(name: "Lottie",
                      url: "https://github.com/airbnb/lottie-ios/releases/download/4.2.0/Lottie.xcframework.zip",
                      checksum: "4db3dee208f6213e5c1681f2314c7ed96d466d9b9adfe5cd0030309515075443")
    ]
)

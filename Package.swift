// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LiveViewNativeAVKit",
    platforms: [
        .iOS("16.0"),
        .macOS("13.0"),
        .watchOS("9.0"),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "LiveViewNativeAVKit",
            targets: ["LiveViewNativeAVKit"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/liveview-native/liveview-client-swiftui.git", from: "0.4.0-rc.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "LiveViewNativeAVKit",
            dependencies: [
                .product(name: "LiveViewNative", package: "liveview-client-swiftui")
            ]),
    ]
)

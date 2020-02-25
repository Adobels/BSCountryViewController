// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "BSCountryViewController",
    platforms: [
        .iOS(.v8),
    ],
    products: [
        .library(name: "BSCountryViewController", targets: ["BSCountryViewController"]),
    ],
    targets: [
        .target(name: "BSCountryViewController", dependencies: []),
    ]
)

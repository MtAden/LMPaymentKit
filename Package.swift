// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "LMPaymentKit",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_14),
        .watchOS(.v5)
    ],
    products: [
        .library(
            name: "LMPaymentKit",
            targets: ["LMPaymentKit"]
        ),
    ],
    targets: [
        .target(
            name: "LMPaymentKit",
        ),
    ]
)

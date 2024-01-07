// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "LMPaymentKit",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "LMPaymentKit",
            targets: ["LMPaymentKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/MtAden/LMPaymentKit.git", .branch("SPM")),
    ],
    targets: [
        .target(
            name: "LMPaymentKit",
            dependencies: ["LMPaymentKit"],
            path: "PaymentKit"
        ),
    ]
)

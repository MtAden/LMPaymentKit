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
    targets: [
        .target(
            name: "LMPaymentKit",
            dependencies: [],
            path: "PaymentKit"
        ),
    ]
)

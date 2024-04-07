// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CreoQuickPay",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0")
    ],
    targets: [
        .target(
            name: "CreoQuickPay",
            dependencies: [
                .product(name: "Vapor", package: "vapor")
            ]
        )
    ]
)

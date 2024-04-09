// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CreoQuickPay",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        // Define products for each target if needed
        .library(
            name: "CreoQuickPayBackend",
            targets: ["CreoQuickPayBackend"]),
        .library(
            name: "CreoQuickPayFrontend",
            targets: ["CreoQuickPayFrontend"]),
        .library(
            name: "CreoQuickPayServices",
            targets: ["CreoQuickPayServices"]),
    ],
    dependencies: [
        // List of package dependencies
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        // Add other dependencies here...
    ],
    targets: [
        .target(
            name: "CreoQuickPayBackend",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                // Add other dependencies specific to the backend target...
            ],
            path: "Backend"
        ),
        .target(
            name: "CreoQuickPayFrontend",
            dependencies: [
                // Add dependencies specific to the frontend target...
            ],
            path: "SwiftUI"
        ),
        .target(
            name: "CreoQuickPayServices",
            dependencies: [
                // Add dependencies specific to the services target...
            ],
            path: "Services"
        ),
        .testTarget(
            name: "CreoQuickPayTests",
            dependencies: [
                "CreoQuickPayBackend",
                "CreoQuickPayFrontend",
                "CreoQuickPayServices",
                // Add other dependencies for testing if needed...
            ],
            path: "Tests"
        ),
    ]
)

// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CreoQuickPay",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        .library(
            name: "CreoQuickPay",
            targets: ["CreoQuickPayBackend", "CreoQuickPayFrontend", "CreoQuickPayServices"]),
    ],
    dependencies: [
        // Your package dependencies
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        // Add other dependencies here...
    ],
    targets: [
        .target(
            name: "CreoQuickPayBackend",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                // Add other target dependencies specific to the backend here...
            ],
            path: "Backend/Models" // Path to your backend models
        ),
        .target(
            name: "CreoQuickPayFrontend",
            dependencies: [
                // Add target dependencies specific to the frontend here...
            ],
            path: "Frontend" // Path to your frontend views
        ),
        .target(
            name: "CreoQuickPayServices",
            dependencies: [
                // Add target dependencies specific to the services here...
            ],
            path: "Services" // Path to your services
        ),
        .testTarget(
            name: "CreoQuickPayTests",
            dependencies: [
                "CreoQuickPayBackend",
                "CreoQuickPayFrontend",
                "CreoQuickPayServices",
                // Include testing dependencies if needed.
            ],
            path: "Tests" // Update this path to the location of your test files
        ),
    ]
)

// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CreoQuickPay",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
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
        // Define any external dependencies required by your package here.
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
            path: "Backend/Models" // Adjust this path to the location of your backend model source files
        ),
        .target(
            name: "CreoQuickPayFrontend",
            dependencies: [
                // Add dependencies specific to the frontend target...
            ],
            path: "Frontend" // Make sure this directory exists and contains your SwiftUI files
        ),
        .target(
            name: "CreoQuickPayServices",
            dependencies: [
                // Add dependencies specific to the services target...
            ],
            path: "Services" // Adjust this path to the location of your services source files
        ),
        .testTarget(
            name: "CreoQuickPayTests",
            dependencies: [
                "CreoQuickPayBackend",
                "CreoQuickPayFrontend",
                "CreoQuickPayServices",
                // Add other dependencies for testing if needed...
            ],
            path: "Tests" // Adjust this path to the location of your test files
        ),
    ]
)

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
        .package(url: "https://github.com/vapor/fluent.git", from: "4.0.0"),
        .package(url: "https://github.com/vapor/fluent-postgres-driver.git", from: "2.0.0"),
        .package(url: "https://github.com/vapor/leaf.git", from: "4.0.0"),
        .package(url: "https://github.com/brokenhandsio/VaporSecurityHeaders.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/jwt.git", from: "4.0.0"),
        .package(url: "https://github.com/vapor/redis.git", from: "4.0.0"),
        .package(url: "https://github.com/vapor/queues.git", from: "1.5.0"),
        .package(url: "https://github.com/vapor/apns.git", from: "1.0.0"),
        .package(url: "https://github.com/vapor-community/mailgun.git", from: "5.0.0"),
        .package(url: "https://github.com/vapor-community/Imperial.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "CreoQuickPayBackend",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "Fluent", package: "fluent"),
                .product(name: "FluentPostgresDriver", package: "fluent-postgres-driver"),
                .product(name: "Leaf", package: "leaf"),
                .product(name: "VaporSecurityHeaders", package: "VaporSecurityHeaders"),
                .product(name: "JWT", package: "jwt"),
                .product(name: "Redis", package: "redis"),
                .product(name: "Queues", package: "queues"),
                .product(name: "APNS", package: "apns"),
                .product(name: "Mailgun", package: "mailgun"),
                .product(name: "Imperial", package: "Imperial"),
                // Add other dependencies specific to the backend target...
            ],
            path: "Backend" // Adjust this path if your backend source files are located elsewhere
        ),
        .target(
            name: "CreoQuickPayFrontend",
            dependencies: [
                // Add dependencies specific to the frontend target...
            ],
            path: "Frontend" // Adjust this path if your frontend source files are located elsewhere
        ),
        .target(
            name: "CreoQuickPayServices",
            dependencies: [
                // Add dependencies specific to the services target...
            ],
            path: "Services" // Adjust this path if your services source files are located elsewhere
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

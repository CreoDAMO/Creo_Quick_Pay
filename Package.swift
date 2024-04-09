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
            targets: ["CreoQuickPay"]),
    ],
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        // 🔵 Swift ORM (queries, models, and relations) for NoSQL and SQL databases.
        .package(url: "https://github.com/vapor/fluent.git", from: "4.0.0"),
        // 🐘 Non-blocking, event-driven Swift client for PostgreSQL.
        .package(url: "https://github.com/vapor/fluent-postgres-driver.git", from: "2.0.0"),
        // 🍃 An expressive, performant, and extensible templating language for building dynamic web pages.
        .package(url: "https://github.com/vapor/leaf.git", from: "4.0.0"),
        // Add other dependencies here...
    ],
    targets: [
        .target(
            name: "CreoQuickPay",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "Fluent", package: "fluent"),
                .product(name: "FluentPostgresDriver", package: "fluent-postgres-driver"),
                .product(name: "Leaf", package: "leaf"),
                // Add other product dependencies here...
            ],
            resources: [
                // Add any resources like templates, configuration files, etc.
            ]
        ),
        .testTarget(
            name: "CreoQuickPayTests",
            dependencies: [
                .target(name: "CreoQuickPay"),
                .product(name: "XCTVapor", package: "vapor"),
                // Include testing dependencies if needed.
            ],
            resources: [
                // Add any test resources here.
            ]
        )
    ]
)

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
        // 🛡️ Adds security headers to Vapor's responses.
        .package(url: "https://github.com/brokenhandsio/VaporSecurityHeaders.git", from: "3.0.0"),
        // 🔑 JSON Web Tokens in Swift.
        .package(url: "https://github.com/vapor/jwt.git", from: "4.0.0"),
        // 🗄️ Redis client for Swift.
        .package(url: "https://github.com/vapor/redis.git", from: "4.0.0"),
        // 🚀 Queues for Vapor.
        .package(url: "https://github.com/vapor/queues.git", from: "1.5.0"),
        // 📦 Apple Push Notification Service (APNS) for Vapor.
        .package(url: "https://github.com/vapor/apns.git", from: "1.0.0"),
        // 📧 Mailgun provider for Vapor.
        .package(url: "https://github.com/vapor-community/mailgun.git", from: "5.0.0"),
        // 👤 Imperial - Federated Authentication with OAuth providers.
        .package(url: "https://github.com/vapor-community/Imperial.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "CreoQuickPay",
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

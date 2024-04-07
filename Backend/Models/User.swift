// Models/User.swift
import Vapor

final class User: Model {
    // User model implementation
}

// Models/Merchant.swift
import Vapor

final class Merchant: Model {
    // Merchant model implementation
}

// Models/Order.swift
import Vapor

final class Order: Model {
    // Order model implementation
}

// Controllers/UserController.swift
import Vapor

final class UserController {
    // UserController implementation

    func register(_ req: Request) throws -> Future<User> {
        guard validate(req) else {
            throw Abort(.badRequest)
        }
        // Register user logic
    }

    private func validate(_ req: Request) -> Bool {
        // Validate request payload
    }
}

// Controllers/MerchantController.swift
import Vapor

final class MerchantController {
    // MerchantController implementation
}

// Controllers/OrderController.swift
import Vapor

final class OrderController {
    // OrderController implementation
}

// Services/AuthService.swift
final class AuthService {
    // AuthService implementation
}

// Services/PaymentsService.swift
final class PaymentsService {
    // PaymentsService implementation
}

// Services/NotificationsService.swift
final class NotificationsService {
    // NotificationsService implementation
}

// Middleware/AuthenticationMiddleware.swift
import Vapor

struct AuthenticationMiddleware: Middleware {
    // AuthenticationMiddleware implementation
}

// Middleware/CORSMiddleware.swift
import Vapor

struct CORSMiddleware: Middleware {
    // CORSMiddleware implementation
}

// Middleware/ErrorMiddleware.swift
import Vapor

struct ErrorMiddleware: Middleware {
    // ErrorMiddleware implementation
}

// Cache/CacheController.swift
import Vapor

final class CacheController {
    // CacheController implementation
}

// Routes/routes.swift
import Vapor

func routes(_ app: Application) throws {
    // Define routes here
}

// Config/app.swift
import Firebase

struct App {
    init() {
        FirebaseApp.configure()
    }
}

// Config/database.swift
import Vapor

func configureDatabase() -> Database {
    // Configure and return database connection
}

// Config/environment.swift
import Vapor

struct Environment {
    static func loadConfig() {
        // Load configuration from .env file
    }
}

// Tests/UserTests.swift
import XCTest
import Vapor
@testable import App

final class UserTests: XCTestCase {
    // User model tests
}

// Tests/MerchantTests.swift
import XCTest
import Vapor
@testable import App

final class MerchantTests: XCTestCase {
    // Merchant model tests
}

// Tests/OrderTests.swift
import XCTest
import Vapor
@testable import App

final class OrderTests: XCTestCase {
    // Order model tests
}

// Tests/UserControllerTests.swift
import XCTest
import Vapor
@testable import App

final class UserControllerTests: XCTestCase {
    // UserController tests
}

// Tests/MerchantControllerTests.swift
import XCTest
import Vapor
@testable import App

final class MerchantControllerTests: XCTestCase {
    // MerchantController tests
}

// Tests/OrderControllerTests.swift
import XCTest
import Vapor
@testable import App

final class OrderControllerTests: XCTestCase {
    // OrderController tests
}

// Tests/AuthServiceTests.swift
import XCTest
import Vapor
@testable import App

final class AuthServiceTests: XCTestCase {
    // AuthService tests
}

// Tests/PaymentsServiceTests.swift
import XCTest
import Vapor
@testable import App

final class PaymentsServiceTests: XCTestCase {
    // PaymentsService tests
}

// Tests/NotificationsServiceTests.swift
import XCTest
import Vapor
@testable import App

final class NotificationsServiceTests: XCTestCase {
    // NotificationsService tests
}

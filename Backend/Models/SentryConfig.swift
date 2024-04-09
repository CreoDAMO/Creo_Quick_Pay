// SentryConfig.swift
import Sentry

/// Initializes Sentry to monitor for errors and performance issues.
func initializeSentry() {
    SentrySDK.start { options in
        // Replace "your-sentry-dsn" with your actual Sentry DSN.
        options.dsn = "your-sentry-dsn"
        
        // Set other configuration options as needed.
        options.debug = true // Enable Sentry debug mode to troubleshoot during development.
        // More configuration options...
    }
}

// Call the initialization function at the appropriate place in your application, such as in the AppDelegate or SceneDelegate.
initializeSentry()

// SentryConfig.swift
import Sentry

SentrySDK.start { options in
    options.dsn = "your-sentry-dsn"
}

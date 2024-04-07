// MetricTracker.swift
import AWSMetrics

let metrics = AWSMetrics(region: .USWest2)

func trackEvent(_ event: String, withProperties properties: [String: Any]) {
    metrics.record(event: event, properties: properties)
}

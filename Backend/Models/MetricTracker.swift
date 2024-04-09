// MetricTracker.swift
import AWSMetrics

/// Initializes the AWSMetrics client for the US West (Oregon) region.
let metrics = AWSMetrics(region: .USWest2)

/// Tracks an event with specified properties.
/// - Parameters:
///   - event: The name of the event to track.
///   - properties: A dictionary of properties associated with the event.
func trackEvent(_ event: String, withProperties properties: [String: Any]) {
    do {
        // Attempt to record the event with the provided properties.
        try metrics.record(event: event, properties: properties)
        print("Event '\(event)' tracked successfully.")
    } catch {
        // Handle any errors that occur during the tracking process.
        print("Failed to track event '\(event)': \(error.localizedDescription)")
    }
}

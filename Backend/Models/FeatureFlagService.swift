// FeatureFlagService.swift
import LaunchDarkly

// Initialize the LaunchDarkly client with your SDK key.
let ldClient = LDClient(sdkKey: "your-sdk-key")

/// Checks the status of a feature flag for a given user.
/// - Parameters:
///   - user: The user for whom to check the feature flag.
///   - flagKey: The key of the feature flag to check.
/// - Returns: A Boolean indicating whether the feature is enabled for the user.
func checkFeatureFlag(forUser user: User, flagKey: String) -> Bool {
    // Ensure the client is initialized before checking the feature flag.
    guard ldClient.isInitialized else {
        print("LaunchDarkly client is not initialized.")
        return false
    }
    
    // Check the feature flag for the given user.
    do {
        let flagValue = try ldClient.variationDetail(flagKey, user.key, defaultValue: false).value
        return flagValue
    } catch {
        print("An error occurred while checking the feature flag: \(error)")
        return false
    }
}

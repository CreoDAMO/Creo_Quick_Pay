// FeatureFlagService.swift
import LaunchDarkly

let ldClient = LDClient(sdkKey: "your-sdk-key")

func checkFeatureFlag(forUser user: User, flagKey: String) -> Bool {
    return ldClient.variationDetail(flagKey, user.key, defaultValue: false).value
}

// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AmitySDK",
    products: [
        .library(
            name: "AmitySDK",
            targets: ["AmitySDK", "Realm", "RealmSwift"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "AmitySDK",
            url: "https://sdk.amity.co/sdk-release/ios-frameworks/6.47.0/AmitySDK.xcframework.zip",
            checksum: "aa22c3496eddf6985ea503b76dd30e22a198446fb4251cba60323bdaf2f5f087"
        ),
        .binaryTarget(
            name: "Realm",
            url: "https://sdk.amity.co/sdk-release/ios-frameworks/6.47.0/Realm.xcframework.zip",
            checksum: "94806fdd455c585228089b81f2b2480e574958d64b561ad1f9bf0a29b956e549"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://sdk.amity.co/sdk-release/ios-frameworks/6.47.0/RealmSwift.xcframework.zip",
            checksum: "fb70b1b71c215544d04c286b708e4c531c2f87d7a62bc3864ab2c5de9ed2dd16"
        ),
    ]
)

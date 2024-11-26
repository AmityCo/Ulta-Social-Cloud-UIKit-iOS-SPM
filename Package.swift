// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AmityUIKit",
    products: [
        .library(
            name: "AmityUIKit",
            targets: ["AmityUIKit", "AmitySDK", "Realm", "RealmSwift", "AmityUIKit4"])
    ],
    targets: [
        .binaryTarget(
            name: "AmityUIKit",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot02/AmityUIKit.xcframework.zip",
            checksum: "e14735735655a849d6eca6091dca5e54a6f04ae9ad11d6a0ae01719e48b6f3b3"
        ),
        .binaryTarget(
            name: "AmitySDK",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot02/AmitySDK.xcframework.zip",
            checksum: "cb437eb03a613c56dc5173297e3d9522700234e7351820b7dce6f5dfa0f6a191"
        ),
        .binaryTarget(
            name: "Realm",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot02/Realm.xcframework.zip",
            checksum: "8407f5658a23d1dac9c2cc41d47814926446146a5b08f22452cd9b3f959d378c"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot02/RealmSwift.xcframework.zip",
            checksum: "adbecaf6b16e3a566a86dce66de2eed738c7ff6c57b52ab8356e2c2ca8752437"
        ),
        .binaryTarget(
            name: "AmityUIKit4",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot02/AmityUIKit4.xcframework.zip",
            checksum: "01f67e9c2d338d4df1dad56270e9cbeda0e8ad603a5d2095aede88f190d75a64"
        )
    ]
)

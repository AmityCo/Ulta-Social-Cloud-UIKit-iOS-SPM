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
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta05/AmityUIKit.xcframework.zip",
            checksum: "69e92bcc4e1549622682de4f8c09f71d198b920fff91acb2c796436ea6b935f8"
        ),
        .binaryTarget(
            name: "AmitySDK",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta05/AmitySDK.xcframework.zip",
            checksum: "b844a8d9bf70af53f5bfa2b2e29687447a6ca2877aeeb3f487028e3ba0c71425"
        ),
        .binaryTarget(
            name: "Realm",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta05/Realm.xcframework.zip",
            checksum: "3cd6c658fcc2696eeb4a765112125793d406b45f170729db51036354a0a49b44"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta05/RealmSwift.xcframework.zip",
            checksum: "de7ce21bd76bc43d9d99894d74d2f7e05b5496e40878cdf740377e2a648f7936"
        ),
        .binaryTarget(
            name: "AmityUIKit4",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta05/AmityUIKit4.xcframework.zip",
            checksum: "943913260e5db24dfa50a7655e189adbb1e08da094dc2c82cb7477968f24ddb4"
        )
    ]
)

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
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta03/AmityUIKit.xcframework.zip",
            checksum: "a1b87c1b7453e1a521280df42aa6433b100b7a606427e0bdb3df54aa8ff3ddce"
        ),
        .binaryTarget(
            name: "AmitySDK",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta03/AmitySDK.xcframework.zip",
            checksum: "85a4c0de32344e8474ca83360c6bdc5ff3c376d5300e4c71d61ca30c9afa0de2"
        ),
        .binaryTarget(
            name: "Realm",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta03/Realm.xcframework.zip",
            checksum: "9b45cfd319bb6559d416f2a4b015a50f1fbeab8569a4ea94c80b8503a76a25fd"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta03/RealmSwift.xcframework.zip",
            checksum: "616e5c7fcfbb398a971a558511f68dba193be04f327b9930ddab7e57a55a6b38"
        ),
        .binaryTarget(
            name: "AmityUIKit4",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta03/AmityUIKit4.xcframework.zip",
            checksum: "e68c5bb49e5df63bf1cf987de34ea0c1b1b4ef4d95bf02d2cb4fe44ee7faaca8"
        )
    ]
)

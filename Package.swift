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
            url: "https://sdk.amity.co/sdk-release/ios-frameworks/6.47.1/AmitySDK.xcframework.zip",
            checksum: "3cabdf3cee5c7bebc69922ce32ebe2ca7451cf95b957f2648fded62abadaf3c6"
        ),
        .binaryTarget(
            name: "Realm",
            url: "https://sdk.amity.co/sdk-release/ios-frameworks/6.47.1/Realm.xcframework.zip",
            checksum: "057d9a85d9231a269aeafd3f0d9fe4b60986e8ed8ed01026a0a90afe38240a10"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://sdk.amity.co/sdk-release/ios-frameworks/6.47.1/RealmSwift.xcframework.zip",
            checksum: "367e19118393248e6794d7b6a29b93b69dc1b04abf3e0b5e7a0466404932550b"
        ),
    ]
)

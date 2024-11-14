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
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta01/AmityUIKit.xcframework.zip",
            checksum: "f75079e2a249518ac2a3de41685b8a11b1ec5ebc4de23e3a2edc846ae82255dc"
        ),
        .binaryTarget(
            name: "AmitySDK",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta01/AmitySDK.xcframework.zip",
            checksum: "13a479c1af606f9d943b3327435e865c10a50696d3536b8a42efdd8867a69eb9"
        ),
        .binaryTarget(
            name: "Realm",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta01/Realm.xcframework.zip",
            checksum: "ae19b3c7135bef5c332d75d8c4156f3d9d7fe08f714dd0519c502aecab816ca3"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta01/RealmSwift.xcframework.zip",
            checksum: "365694efc40b396985e41671447ca3a50e935d8aed3badeb9622beb856ff3467"
        ),
        .binaryTarget(
            name: "AmityUIKit4",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta01/AmityUIKit4.xcframework.zip",
            checksum: "1fe1fda1a468d1ebaa9b182338a614cbbb6585a19ee4c02e4b0f6ab6b08fdf71"
        )
    ]
)

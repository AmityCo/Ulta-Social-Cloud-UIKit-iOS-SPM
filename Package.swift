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
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot01/AmityUIKit.xcframework.zip",
            checksum: "71a49790c93f293948013ae28f9e6c407c5d1be8326a3520950cdbc24a14ebf8"
        ),
        .binaryTarget(
            name: "AmitySDK",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot01/AmitySDK.xcframework.zip",
            checksum: "5d93af3c9a49c379e54f94df7c48b31854cf097acee1ff48169a6180390e1036"
        ),
        .binaryTarget(
            name: "Realm",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot01/Realm.xcframework.zip",
            checksum: "d562edc88cd15a7f783d7abfef81c046ca14059b016339ddb83b7eb1a86af94b"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot01/RealmSwift.xcframework.zip",
            checksum: "d94bccb6f4b35703860f782f90c1282a59527800642c7ba4f3959e3e3abf61f6"
        ),
        .binaryTarget(
            name: "AmityUIKit4",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot01/AmityUIKit4.xcframework.zip",
            checksum: "db1eeecaa6e9d23948654a380bd1c9b37462fa5dc60047164c3159241575ced5"
        )
    ]
)

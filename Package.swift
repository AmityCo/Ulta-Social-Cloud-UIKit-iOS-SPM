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
            checksum: "bcb39132b15623599edcb54f2af0b5414651c4d21109dfa58488aa85be0de236"
        ),
        .binaryTarget(
            name: "AmitySDK",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta01/AmitySDK.xcframework.zip",
            checksum: "5f63fe82a93578a96ccc9dd6fee73fd48d5938991dd468347c404cadeeb4106b"
        ),
        .binaryTarget(
            name: "Realm",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta01/Realm.xcframework.zip",
            checksum: "eed8a9fac3789e16af4670de7ef3baa9bc193f5a3191a376eb88f177b188ee25"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta01/RealmSwift.xcframework.zip",
            checksum: "74d5a7e001d2fa863327789a84827b8943901740567d1777b16f517b058416ae"
        ),
        .binaryTarget(
            name: "AmityUIKit4",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta01/AmityUIKit4.xcframework.zip",
            checksum: "1e83af49ce26e6a66e1073ae6ad93ee0dccf435a1c975a325e090e837e460318"
        )
    ]
)

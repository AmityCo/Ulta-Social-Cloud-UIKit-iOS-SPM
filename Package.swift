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
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02/AmityUIKit.xcframework.zip",
            checksum: "0b7df55842cae0bc729235dce50413987835ad554561c58512b0e75cbffc0e5b"
        ),
        .binaryTarget(
            name: "AmitySDK",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02/AmitySDK.xcframework.zip",
            checksum: "16ad73b0f54fb74b0c07866d89eba0ebcedbb1edba53d4279d4d591866972bc2"
        ),
        .binaryTarget(
            name: "Realm",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02/Realm.xcframework.zip",
            checksum: "17d6119fd4c6de170d92cb8f62533506726b20d7dd183d7c547e411096b5854c"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02/RealmSwift.xcframework.zip",
            checksum: "a70e50089b8c1aa56d1a52066a91a60b65ccd67f7a890a8b85e88ad8c1b519a3"
        ),
        .binaryTarget(
            name: "AmityUIKit4",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02/AmityUIKit4.xcframework.zip",
            checksum: "9981820f56241cede5d30c60456fa5860b6b0ac3237210a4734d5ff7f5a30354"
        )
    ]
)

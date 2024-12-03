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
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot03/AmityUIKit.xcframework.zip",
            checksum: "f0afb5a7c2b5346240a009d1fbf4b9f8f23f277661e80325aba76db3aafa068f"
        ),
        .binaryTarget(
            name: "AmitySDK",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot03/AmitySDK.xcframework.zip",
            checksum: "f4d6db1e7b985e48ce1402c8d2580b09085dea95039cea0bd344fb4bcd348122"
        ),
        .binaryTarget(
            name: "Realm",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot03/Realm.xcframework.zip",
            checksum: "d8c8343666ab306a635a1bd1baceecf5e490b14db92bacc0d9cdbff9b1f18565"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot03/RealmSwift.xcframework.zip",
            checksum: "0003794305356cf3ffe4fc2cbebe161a52e8eb93eade8bfd609b69bc6a511cce"
        ),
        .binaryTarget(
            name: "AmityUIKit4",
            url: "https://sdk.amity.co/sdk-release/ios-uikit-frameworks/2.0.0-beta02-pilot03/AmityUIKit4.xcframework.zip",
            checksum: "814c1ff652884060898bb9252b2700804e01dbf6225487e1230bc5a3e1b76c77"
        )
    ]
)

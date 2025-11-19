// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "planetad-ios",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "PlanetAdSDK",
            targets: ["PlanetAdSDKTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios", .upToNextMajor(from: "3.23.0")),
        .package(url: "https://github.com/SDWebImage/SDWebImage.git", .upToNextMajor(from: "5.0.0"))
    ],
    targets: [
        .target(
            name: "PlanetAdSDKTarget",
            dependencies: [
                "PlanetAdSDK",
                .product(name: "GoogleInteractiveMediaAds", package: "swift-package-manager-google-interactive-media-ads-ios"),
                .product(name: "SDWebImage", package: "SDWebImage")
            ]
        ),
        .binaryTarget(
            name: "PlanetAdSDK",
            url: "https://storage.googleapis.com/planetad/ios_spm/v1.14.2/PlanetAdSDK.zip",
            checksum: "502dc5898c4ce34a63f2a6d3b9208d10b32f842baf1437d48f440d216ad68b34"
        )
    ]
)

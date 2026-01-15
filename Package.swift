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
        .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios", .upToNextMajor(from: "3.23.0"))
    ],
    targets: [
        .target(
            name: "PlanetAdSDKTarget",
            dependencies: [
                "PlanetAdSDK",
                .product(name: "GoogleInteractiveMediaAds", package: "swift-package-manager-google-interactive-media-ads-ios")
            ]
        ),
        .binaryTarget(
            name: "PlanetAdSDK",
            url: "https://storage.googleapis.com/planetad/ios_spm/v1.14.3/PlanetAdSDK.zip",
            checksum: "3325c3a4500c32d207a6991a29eb4af78861b365115c26fb22e50b9ac949f437"
        )
    ]
)

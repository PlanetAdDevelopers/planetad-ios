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
        .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios", exact: "3.31.0")
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
            url: "https://storage.googleapis.com/planetad/ios_spm/v1.15.5/PlanetAdSDK.zip",
            checksum: "ea07738c9f42fea471d1d34687394c9b5a0340586067fc76a7f709bda4dce77b"
        )
    ]
)

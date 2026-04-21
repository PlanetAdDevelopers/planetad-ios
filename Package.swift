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
        .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios", exact: "3.23.0")
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
            url: "https://storage.googleapis.com/planetad/ios_spm/v1.15.3/PlanetAdSDK.zip",
            checksum: "48ecc2663b08a8ff57c634853d40c3d7cfaa68579f7b1de6c40ed89684aee28d"
        )
    ]
)

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
            url: "https://storage.googleapis.com/planetad/ios_spm/v1.15.7/PlanetAdSDK.zip",
            checksum: "956038914feed3ce8987352f12936c15152d8f507249f64296e00e265c67da3c"
        )
    ]
)

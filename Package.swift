// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "DocumentDetector",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DocumentDetector",
            targets: ["DocumentDetectorSDK"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/combateafraude/TensorFlowLiteC.git",
            .exact("2.14.1")
        ),
        .package(
            url: "https://github.com/combateafraude/CafSolutions.git",
            .exact("2.0.6")
        )
    ],
    targets: [
        .binaryTarget(
            name: "DocumentDetector",
            path: "Sources/DocumentDetector.xcframework"
        ),
        .target(
            name: "DocumentDetectorSDK",
            dependencies: [
                "DocumentDetector",
                .product(name: "CafSolutions", package: "CafSolutions"),
                .product(name: "TensorFlowLiteC", package: "TensorFlowLiteC"),
            ],
            path: "./Sources"
        )
    ]
)

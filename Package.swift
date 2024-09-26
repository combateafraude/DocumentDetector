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
    ],
    targets: [
        .binaryTarget(
            name: "DocumentDetector",
            url: "https://github.com/combateafraude/iOS/releases/download/DocumentDetector-15.0.0/DocumentDetector.xcframework.zip",
            checksum: "b5864f762b50a8e4eab3dfef94740e73590840ad369787a85d8d2208b068f05b"
        ),
        .binaryTarget(
            name: "CafSolutions",
            url: "https://github.com/combateafraude/iOS/releases/download/DocumentDetector-14.0.0/CafSolutions.xcframework.zip",
            checksum: "f075d5e8e02e4d0120eb7a099f4136d5cf22d1e222ebbfc09985e2b9d00f22dd"
         ),
        .target(
            name: "DocumentDetectorSDK",
            dependencies: [
                "DocumentDetector",
                "CafSolutions",
                .product(name: "TensorFlowLiteC", package: "TensorFlowLiteC"),
            ],
            path: "./Sources"
        )
    ]
)

// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "UITextField-Blocks",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "UITextField-Blocks",
            targets: ["UITextField-Blocks"]
        )
    ],
    targets: [
        .target(
            name: "UITextField-Blocks",
            path: "Sources/UITextField-Blocks"
        )
    ]
)

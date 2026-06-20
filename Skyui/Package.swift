// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "Skyui",
    
    platforms: [
        .iOS(.v15)
    ],
    
    products: [
        .library(
            name: "Skyui",
            targets: ["Skyui"]
        )
    ],
    
    targets: [
        .target(
            name: "Skyui",
            path: "Sources/Skyui"
        ),
        
        .testTarget(
            name: "SkyuiTests",
            dependencies: ["Skyui"],
            path: "Tests/SkyuiTests"
        )
    ]
)


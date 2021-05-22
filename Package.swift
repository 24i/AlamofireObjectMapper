// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AlamofireObjectMapper",
    platforms: [
         .iOS(.v10)
    ],
    products: [
        .library(
            name: "AlamofireObjectMapper",
            targets: ["AlamofireObjectMapper"]),
    ],
    dependencies: [
        .package(name: "Alamofire", url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0-rc.3"),
        .package(name: "ObjectMapper", url: "https://github.com/tristanhimmelman/ObjectMapper", from: "4.2.0")
    ],
    targets: [
        .target(
            name: "AlamofireObjectMapper",
            dependencies: [
                "Alamofire",
                "ObjectMapper"
            ],
            path: "AlamofireObjectMapper")
    ]
)

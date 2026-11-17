// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AppStoreAuth",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "NativeStore", targets: ["NativeStore"]),
        .library(name: "SAPKit", targets: ["SAPKit"]),
        .library(name: "MacAnisetteKit", targets: ["MacAnisetteKit"]),
        .library(name: "AppStoreCore", targets: ["AppStoreCore"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jbisfun/MacADICore", branch: "main"),
    ],
    targets: [
        .target(name: "NativeStore"),
        .target(
            name: "SAPKit",
            dependencies: ["MacADICore"],
            exclude: ["LICENSE", "LICENSE.ipatool"],
            linkerSettings: [.linkedLibrary("bz2"), .linkedLibrary("z")]
        ),
        .target(
            name: "MacAnisetteKit",
            dependencies: ["MacADICore", "NativeStore"],
            linkerSettings: [.linkedLibrary("bz2"), .linkedLibrary("z"), .linkedLibrary("compression")]
        ),
        .target(name: "AppStoreCore", dependencies: ["SAPKit", "MacAnisetteKit"]),
    ],
    swiftLanguageVersions: [.v5]
)

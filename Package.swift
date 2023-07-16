// swift-tools-version:5.8
import PackageDescription

let package = Package(
	name: "universal-swift",
	platforms: [
		.macOS(.v10_15)
	],
	products: [
		.executable(name: "universalswiftctl", targets: ["SiteCTL"])
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.0.0"),
		.package(url: "https://github.com/JohnSundell/Publish.git", from: "0.7.0"),
		.package(url: "https://github.com/JohnSundell/SplashPublishPlugin.git", from: "0.1.0")
	],
	targets: [
		.executableTarget(
			name: "SiteCTL",
			dependencies: [
				.product(name: "ArgumentParser", package: "swift-argument-parser"),
				.product(name: "Publish", package: "Publish"),
				.product(name: "SplashPublishPlugin", package: "SplashPublishPlugin"),
				.target(name: "Site")
			]
		),
		.target(
			name: "Site",
			dependencies: [
				.product(name: "Publish", package: "Publish")
			]
		)
	]
)

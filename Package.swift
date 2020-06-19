// swift-tools-version:5.2
import PackageDescription

let package = Package(
	name: "UniversalSwift",
	dependencies: [
		.package(url: "https://github.com/JohnSundell/Publish.git", from: "0.7.0")
	],
	targets: [
		.target(name: "UniversalSwift", dependencies: ["Publish"])
	]
)

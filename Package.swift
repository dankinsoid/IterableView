// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "IterableView",
	platforms: [
		.iOS(.v13), .macOS(.v10_15)
	],
	products: [
		.library(name: "IterableView", targets: ["IterableView"]),
	],
	dependencies: [],
	targets: [
		.target(name: "IterableView", dependencies: [])
	]
)

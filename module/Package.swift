// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "emacsMacOSTokenizer",
  platforms: [.macOS(.v10_15)],
  products: [
    .library(
      name: "emacsMacOSTokenizer",
      type: .dynamic,
      targets: ["emacsMacOSTokenizer"]
    ),
  ],
  dependencies: [
    .package(url: "https://github.com/SavchenkoValeriy/emacs-swift-module.git", revision: "c776706c9338b8ba72a76a2128fd89bd4ac4269e")
  ],
  targets: [
    .target(
      name: "emacsMacOSTokenizer",
      dependencies: [
        .product(name: "EmacsSwiftModule", package: "emacs-swift-module")
      ],
      plugins: [
        .plugin(name: "ModuleFactoryPlugin", package: "emacs-swift-module")
      ]),
  ]
)

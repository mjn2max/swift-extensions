# Swift-Extensions

[![Swift](https://img.shields.io/badge/Swift-5.x_6.x-orange?style=flat-square)](https://img.shields.io/badge/Swift-5.x_6.x-Orange?style=flat-square)
[![Platforms](https://img.shields.io/badge/Platforms-iOS_macOS_watchOS_tvOS_visionOS-yellowgreen?style=flat-square)](https://img.shields.io/badge/Platforms-iOS_macOS_watchOS_tvOS_visionOS-Green?style=flat-square)
[![Swift Package Manager](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)](https://img.shields.io/badge/Swift_Package_Manager-compatible-orange?style=flat-square)

A collection of useful Swift extensions to simplify and enhance iOS, macOS, watchOS, tvOS, and visionOS development. Each extension is crafted to save development time and improve code readability and reusability.

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Requirements](#requirements)
- [Usage](#usage)
- [Extensions List](#extensions-list)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Core Extensions:** Add functionality to common Swift types such as `String`, `Array`, `Date`, `Dictionary`, and more.
- **UIKit Extensions:** Simplify common UI tasks with extensions for `UIView`, `UIColor`, `UIImage`, etc.
- **Foundation Extensions:** Convenient methods for `URL`, `DateFormatter`, `Data`, and other Foundation types.
- **Lightweight and Modular:** Include only the extensions you need, easy to keep your project lightweight.
- **Modern Swift Support:** Designed for Swift 5.7 and above, leveraging the latest language features.

## Installation

### Swift Package Manager

To install using Swift Package Manager, add the following line to your `Package.swift` file:

```swift
dependencies: [
    .package(url: "https://github.com/mjn2max/swift-extensions.git", from: "1.0.0")
]
```

Then import in your source files:

```swift
import SwiftExtensions
```

### Manual Integration

- Download or clone the repository.
- Copy the Sources/SwiftExtensions folder into your Xcode project.
- Use the extensions as you would any other Swift code.

## Requirements

| Platform    | Minimum Swift Version | Installation                                                         | Status           |
| ----------- | --------------------- | -------------------------------------------------------------------- | ---------------- |
| iOS 13.0+   | 5.7.1 / Xcode 14.1    | [Swift Package Manager](#swift-package-manager), [Manual](#manually) | Not Fully Tested |
| macOS 13.0+ | Latest Only           | [Swift Package Manager](#swift-package-manager)                      | Not Fully Tested |
| watchOS     | Latest Only           | [Swift Package Manager](#swift-package-manager)                      | Not Fully Tested |
| tvOS        | Latest Only           | [Swift Package Manager](#swift-package-manager)                      | Not Fully Tested |
| visionOS    | Latest Only           | [Swift Package Manager](#swift-package-manager)                      | Not Fully Tested |

## Usage

Swift-Extensions aims for “drop-in” convenience. Just import and use the new methods and computed properties:

**Example 1: Rounding a Double**

```swift
let value = 3.14159
let rounded = value.rounded(toPlaces: 2) // 3.14
```

**Example 2: String Trimming**

```swift
let text = "  Hello World  "
let trimmed = text.trimmed() // "Hello World"
```

**Example 3: UIView Corner Radius**

```swift
let view = UIView()
view.roundCorners(radius: 10)
```

More examples can be found in the [Extensions List](#extensions-list).

## Extensions List

## Migration Guides

## Communication

## Contributing

## Open Radars

## FAQ

## Credits

## Donations

## License

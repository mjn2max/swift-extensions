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
- [Extension List](#extension-list)
- [Migration Guides](#migration-guides)
- [Communication](#communication)
- [Contributing](#contributing)
- [Open Radars](#open-radars)
- [FAQs](#faqs)
- [Credits](#credits)
- [Donations](#donations)
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

More examples can be found in the [Extension List](#extension-list).

## Extension List

Here are some of the most popular extensions in this package:

`Double.swift`

- _rounded(toPlaces:):_ Round a double to a specified number of decimal places.
- _degreesToRadians/radiansToDegrees:_ Easy angle conversion.

`String.swift`

- _trimmed():_ Trims whitespace and newlines.
- _isNumeric:_ Checks if the string contains only numbers.

`Array.swift`

- _unique():_ Removes duplicate elements.

For a full list, browse the [Sources directory](/Sources/).

## Migration Guides

Coming soon...

## Communication

- **Bugs & Feature Requests:** Please [open an issue](https://github.com/mjn2max/swift-extensions/issues) on GitHub.
- **Questions & Support:** Use the issue tracker for all questions, suggestions, and support requests.
- **Contact:** For all communication, please use the GitHub issue tracker to ensure transparency and faster responses.

## Contributing

Contributions are welcome! Please:

1. [Open an issue](https://github.com/mjn2max/swift-extensions/issues) or discussion to propose changes or extensions.
2. Fork the [repo](https://github.com/mjn2max/swift-extensions) and create your feature branch.
3. Add tests for new functionality.
4. Submit a pull request with a clear description.

All contributions must follow the [Code of Conduct](https://www.swift.org/code-of-conduct/).

## Open Radars

If you discover any Swift or Apple bugs that impact this project, please share the radar number and a brief description in this section to help other contributors stay informed.

## FAQs

**Q: Can I use only a subset of the extensions?**  
A: Yes! Just include the specific files you need.

**Q: Is this production ready?**  
A: Core extensions are stable, but some platforms are not fully tested. Use at your discretion and report any issues.

## Credits

Created and maintained by [mjn2max](https://github.com/mjn2max) and contributors. See the [Contributors](https://github.com/mjn2max/swift-extensions/graphs/contributors) page for a full list.

## Donations

If you find this useful, you can sponsor this project via [GitHub Sponsors](https://github.com/sponsors/mjn2max) or [Buy Me a Coffee](https://buymeacoffee.com/mjn2max). Your support helps maintain and improve Swift-Extensions!

## License

This project is licensed under the MIT License. See [LICENSE](/LICENSE) for details.

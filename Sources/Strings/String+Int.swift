//
// String+Int.swift
// Swift-Extensions
//
// Created by Huy D. on 6/29/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

import Foundation

// MARK: - String Extensions - Return `Int`

public extension String {
    /// Parses the string as an Int using the current locale's number format.
    ///
    /// - Returns: An integer value parsed from the string, or `0` if parsing fails.
    ///
    /// # Usage
    /// ```
    /// let value = "1,234"
    /// let number = value.intValue // 1234
    /// ```
    var intValue: Int {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        return formatter.number(from: self)?.intValue ?? 0
    }
}

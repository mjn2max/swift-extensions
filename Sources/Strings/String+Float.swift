//
// String+Float.swift
// Swift-Extensions
//
// Created by Huy D. on 6/29/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

import Foundation

// MARK: - String Extensions - Return `Float`

public extension String {
    /// Parses the string as a Float using the current locale's number format.
    ///
    /// - Returns: A float value parsed from the string, or `0.0` if parsing fails.
    ///
    /// # Usage
    /// ```
    /// let value = "1,234.56"
    /// let number = value.floatValue // 1234.56
    /// ```
    var floatValue: Float {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        return formatter.number(from: self)?.floatValue ?? 0.0
    }
}

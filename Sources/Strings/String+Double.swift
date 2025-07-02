//
// String+Double.swift
// Swift-Extensions
//
// Created by Huy D. on 6/30/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

import Foundation

// MARK: - String Extensions - Return `Double`

public extension String {
    /// Parses the string as a Double using the current locale's number format.
    ///
    /// - Returns: A double value parsed from the string, or `0.0` if parsing fails.
    ///
    /// # Usage
    /// ```
    /// let value = "1,234.56"
    /// let number = value.doubleValue // 1234.56
    /// ```
    var doubleValue: Double {
        let formatter = NumberFormatter()
        formatter.locale = Locale.current
        return formatter.number(from: self)?.doubleValue ?? 0.0
    }
}

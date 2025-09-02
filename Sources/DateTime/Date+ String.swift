//
// File.swift
// Swift-Extensions
//
// Created by Huy D. on 8/30/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

import Foundation

// MARK: - Date Extensions - Return `String`

extension Date {
    /// Formats the date using the provided date format string.
    ///
    /// - Parameter format: The date format string (e.g., "yyyy-MM-dd HH:mm").
    /// - Returns: A string representation of the date.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let formatted = now.formatted("yyyy-MM-dd")
    /// > sample result: "2025-08-30"
    /// ```
    func formatted(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }

    /// Formats the date in a localized style (short, medium, long, full).
    ///
    /// - Parameter style: The date style to use (default: .medium).
    /// - Returns: A string representation of the date in the given style.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let formatted = now.formatted(style: .long)
    /// > sample result: "August 30, 2025"
    /// ```
    func formatted(style: DateFormatter.Style = .medium) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = style
        formatter.timeStyle = .none
        return formatter.string(from: self)
    }

    /// Formats the date using the provided date and time styles.
    ///
    /// - Parameters:
    ///   - dateStyle: The date style to use (default: .medium).
    ///   - timeStyle: The time style to use (default: .short).
    /// - Returns: A string representation of the date and time in the given styles.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let formatted = now.formatted(dateStyle: .short, timeStyle: .medium)
    /// > sample result: "8/30/25, 12:34 PM"
    /// ```
    func formatted(dateStyle: DateFormatter.Style = .medium, timeStyle: DateFormatter.Style = .short) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = dateStyle
        formatter.timeStyle = timeStyle
        return formatter.string(from: self)
    }
}

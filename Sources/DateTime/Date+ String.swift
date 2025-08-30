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
    /// ```
    func formatted(_ format: String) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        return formatter.string(from: self)
    }
}

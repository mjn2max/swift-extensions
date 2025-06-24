//
// String.swift
// Swift-Extensions
//
// Created by Huy D. on 6/23/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

import Foundation

// MARK: - String Extensions

public extension String {
    /// Returns a new string made by removing whitespace and newlines from both ends of the string.
    ///
    /// - Returns: A trimmed string with no leading or trailing whitespace/newlines.
    ///
    /// # Usage
    /// ```
    /// let text = "   Hello, world!  \n"
    /// let trimmedText = text.trimmed() // "Hello, world!"
    /// ```
    var trimmed: String {
        trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

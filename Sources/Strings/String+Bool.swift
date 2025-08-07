//
// File.swift
// Swift-Extensions
//
// Created by Huy D. on 8/6/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

import Foundation

// MARK: - String Extensions - Return `Bool`

extension String {
    /// Returns a Boolean value indicating whether the string is a valid email address.
    ///
    /// # Usage
    /// ```
    /// let email = "test@example.com"
    /// let isValid = email.isValidEmail // true
    /// ```
    var isValidEmail: Bool {
        let pattern = #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
        return range(of: pattern, options: .regularExpression) != nil
    }
    
    
    /// Returns a Boolean value indicating whether the string contains only numeric characters.
    ///
    /// # Usage
    /// ```
    /// let input = "12345"
    /// let isNumeric = input.isNumeric // true
    /// ```
    var isNumeric: Bool {
        return !isEmpty && allSatisfy { $0.isNumber }
    }
    
}

//
// Int.swift
// Swift-Extensions
//
// Created by Huy D. on 6/26/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

import Foundation

// MARK: - Int Extensions - Return `Bool`

extension Int {
    /// Returns `true` if the integer is even.
    ///
    /// - Returns: `true` if the value is even, otherwise `false`.
    ///
    /// # Usage
    /// ```
    /// let number = 4
    /// let isEven = number.isEven // true
    ///
    /// let oddNumber = 7
    /// let isOddEven = oddNumber.isEven // false
    /// ```
    var isEven: Bool {
        self % 2 == .zero
    }


    /// Returns `true` if the integer is odd.
    ///
    /// - Returns: `true` if the value is odd, otherwise `false`.
    ///
    /// # Usage
    /// ```
    /// let number = 5
    /// let isOdd = number.isOdd // true
    ///
    /// let evenNumber = 8
    /// let isEvenOdd = evenNumber.isOdd // false
    /// ```
    var isOdd: Bool {
        self % 2 != .zero
    }
}

//
// Decimal.swift
// Swift-Extensions
//
// Created by Huy D. on 6/24/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

import Foundation

// MARK: - Decimal Extensions - Return `Decimal`

extension Decimal {
    /// Returns the value rounded to a specified number of decimal places.
    ///
    /// - Parameter places: Number of decimal places to round to.
    /// - Returns: Rounded Decimal.
    ///
    /// # Usage
    /// ```
    /// let value: Decimal = 3.14159
    /// let rounded = value.rounded(toPlaces: 2) // 3.14
    /// ```
    func rounded(toPlaces places: Int) -> Decimal {
        var result = self
        var rounded = Decimal()
        NSDecimalRound(&rounded, &result, places, .plain)
        return rounded
    }
}

// MARK: - Decimal Extensions - Return `Bool`

extension Decimal {
    /// Returns `true` if the decimal value is an integer (has no fractional part).
    ///
    /// - Returns: `true` if the value is an integer, otherwise `false`.
    ///
    /// # Usage
    /// ```
    /// let whole: Decimal = 10
    /// let isInt = whole.isInteger // true
    ///
    /// let pi: Decimal = 3.14
    /// let isPiInt = pi.isInteger // false
    /// ```
    var isInteger: Bool {
        NSDecimalNumber(decimal: self).decimalValue == NSDecimalNumber(decimal: self).rounding(accordingToBehavior: nil).decimalValue
    }
}

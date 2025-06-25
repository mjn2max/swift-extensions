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

// MARK: - Decimal Extensions

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

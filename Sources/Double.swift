//
// Double.swift
// Swift-Extensions
//
// Created by Huy D. on 10/14/24
// mjn2max.github.io 😜
//
// Copyright © 2024. All rights reserved.
// CodePassion.dev
//

import Foundation

// MARK: - Double Extensions - Bool
extension Double {
    /// Returns true if the value has no fractional component (i.e., is mathematically an integer).
    ///
    /// Usage:
    /// ```
    /// let num = 5.0
    /// let isInt = num.isInteger // true
    /// ```
    var isInteger: Bool {
        truncatingRemainder(dividingBy: 1) == 0
    }
}

// MARK: - Double Extensions - Temperature
extension Double {
    func celsiusToFahrenheit() -> Double {
        return self * 9 / 5 + 32
    }

    func fahrenheitToCelsius() -> Double {
        return (self - 32) * 5 / 9
    }
}

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

// MARK: - Double Extensions - Return `Bool`
public extension Double {
    /// Returns `true` if the value has no fractional component (i.e., is mathematically an integer).
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

// MARK: - Double Extensions - Return `Double`

public extension Double {
    /// Returns the value rounded to a specified number of decimal places.
    ///
    /// - Parameter places: Number of decimal places to round to.
    /// - Returns: Rounded Double.
    ///
    /// Usage:
    /// ```
    /// let value = 3.14159
    /// let rounded = value.rounded(toPlaces: 2) // 3.14
    /// ```
    func rounded(toPlaces places: Int) -> Double {
        guard places >= 0 else { return self }
        let factor = pow(10.0, Double(places))
        return (self * factor).rounded() / factor
    }


    /// Converts degrees to radians.
    ///
    /// Usage:
    /// ```
    /// let degrees = 180.0
    /// let radians = degrees.degreesToRadians // 3.141592653589793
    /// ```
    var degreesToRadians: Double { self * .pi / 180 }


    /// Converts radians to degrees.
    ///
    /// Usage:
    /// ```
    /// let radians = Double.pi
    /// let degrees = radians.radiansToDegrees // 180.0
    /// ```
    var radiansToDegrees: Double { self * 180 / .pi }
}

// MARK: - Double Extensions - Temperature

public extension Double {
    func celsiusToFahrenheit() -> Double {
        return self * 9 / 5 + 32
    }

    func fahrenheitToCelsius() -> Double {
        return (self - 32) * 5 / 9
    }
}

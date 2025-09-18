//
// CGFloat.swift
// Swift-Extensions
//
// Created by Huy D. on 6/27/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

import Foundation

// MARK: - CGFloat Extensions

extension CGFloat {
    /// Returns the value rounded to a specified number of decimal places.
    ///
    /// - Parameter places: Number of decimal places to round to.
    /// - Returns: Rounded CGFloat.
    ///
    /// # Usage
    /// ```
    /// let value: CGFloat = 3.14159
    /// let rounded = value.rounded(toPlaces: 2) // 3.14
    /// ```
    func rounded(toPlaces places: Int) -> CGFloat {
        guard places >= 0 else { return self }
        let factor = pow(10.0, CGFloat(places))
        return (self * factor).rounded() / factor
    }


    /// Converts the value from degrees to radians.
    ///
    /// # Usage
    /// ```
    /// let degrees: CGFloat = 180
    /// let radians = degrees.toRadians // π
    /// ```
    var toRadians: CGFloat {
        return self * .pi / 180
    }


    /// Converts the value from radians to degrees.
    ///
    /// # Usage
    /// ```
    /// let radians: CGFloat = .pi
    /// let degrees = radians.toDegrees // 180
    /// ```
    var toDegrees: CGFloat {
        return self * 180 / .pi
    }

    
    /// Returns the absolute value of the CGFloat.
    ///
    /// # Usage
    /// ```
    /// let value: CGFloat = -42.5
    /// let absolute = value.abs // 42.5
    /// ```
    var abs: CGFloat {
        return Swift.abs(self)
    }
    
    
    /// Returns the value clamped to the given closed range.
    ///
    /// - Parameter limits: The closed range to clamp the value to.
    /// - Returns: A CGFloat within the specified range.
    ///
    /// # Usage
    /// ```
    /// let value: CGFloat = 15
    /// let clamped = value.clamped(to: 0...10) // 10
    /// ```
    func clamped(to limits: ClosedRange<CGFloat>) -> CGFloat {
        if self < limits.lowerBound { return limits.lowerBound }
        if self > limits.upperBound { return limits.upperBound }
        return self
    }
    
    
    /// Linearly interpolates from the current value to a target value by a given progress amount.
    ///
    /// - Parameters:
    ///   - to: The target value to interpolate towards.
    ///   - progress: The interpolation factor in the range `[0, 1]` where `0` returns `self` and `1` returns `to`.
    /// - Returns: The interpolated `CGFloat`.
    ///
    /// # Usage
    /// ```
    /// let start: CGFloat = 0
    /// let end: CGFloat = 10
    /// let mid = start.lerp(to: end, progress: 0.5) // 5
    /// ```
    func lerp(to: CGFloat, progress: CGFloat) -> CGFloat {
        let t = progress.clamped(to: 0...1)
        return self + (to - self) * t
    }
}

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
}

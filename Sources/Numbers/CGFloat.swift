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

    /// Rounds the value to the nearest multiple of the given increment.
    ///
    /// - Parameter increment: The increment to snap to. Negative values are treated as positive.
    /// - Returns: The value rounded to the nearest multiple of `increment`.
    ///
    /// # Usage
    /// ```
    /// let value: CGFloat = 13.7
    /// let snapped = value.snapped(toIncrement: 0.5) // 13.5
    /// ```
    func snapped(toIncrement increment: CGFloat) -> CGFloat {
        let step = Swift.abs(increment)
        guard step > 0, step.isFinite else { return self }
        return (self / step).rounded() * step
    }


    /// Returns the absolute distance between this value and another value.
    ///
    /// - Parameter other: The other value.
    /// - Returns: `abs(self - other)`.
    ///
    /// # Usage
    /// ```
    /// 10.0.absoluteDistance(to: 6.5) // 3.5
    /// ```
    func absoluteDistance(to other: CGFloat) -> CGFloat {
        return Swift.abs(self - other)
    }


    /// Checks if two `CGFloat` values are approximately equal within a given tolerance.
    ///
    /// - Parameters:
    ///   - other: The value to compare against.
    ///   - tolerance: The relative tolerance. Defaults to a small multiple of `ulpOfOne`.
    /// - Returns: `true` if the values are approximately equal.
    ///
    /// # Notes
    /// Uses a relative comparison scaled by the magnitude of the values.
    ///
    /// # Usage
    /// ```
    /// let a: CGFloat = 1.0000001
    /// let b: CGFloat = 1.0
    /// a.isApproximatelyEqual(to: b, tolerance: 1e-6) // true
    /// ```
    func isApproximatelyEqual(to other: CGFloat, tolerance: CGFloat = CGFloat.ulpOfOne * 4) -> Bool {
        if self == other { return true }
        let magnitude = Swift.max(Swift.abs(self), Swift.abs(other))
        let scale = Swift.max(CGFloat(1), magnitude)
        return Swift.abs(self - other) <= tolerance * scale
    }


    /// Normalizes the value within a range, producing a number typically in `[0, 1]`.
    ///
    /// - Parameters:
    ///   - range: The source range that `self` is in.
    ///   - clamp: If `true`, clamps the result to `[0, 1]`.
    /// - Returns: The normalized value.
    ///
    /// # Usage
    /// ```
    /// let value: CGFloat = 75
    /// let t = value.normalized(in: 50...150) // 0.25
    /// ```
    func normalized(in range: ClosedRange<CGFloat>, clamp: Bool = false) -> CGFloat {
        let minV = range.lowerBound
        let maxV = range.upperBound
        guard maxV != minV else { return 0 }
        let t = (self - minV) / (maxV - minV)
        return clamp ? t.clamped(to: 0...1) : t
    }


    /// Maps the value from a source range to a target range.
    ///
    /// - Parameters:
    ///   - source: The source range.
    ///   - target: The target range.
    ///   - clamp: If `true`, clamps `self` to `source` before mapping.
    /// - Returns: The mapped value.
    ///
    /// # Usage
    /// ```
    /// let x: CGFloat = 0.25
    /// let y = x.mapped(from: 0...1, to: 10...20) // 12.5
    /// ```
    func mapped(from source: ClosedRange<CGFloat>, to target: ClosedRange<CGFloat>, clamp: Bool = false) -> CGFloat {
        guard source.upperBound != source.lowerBound else { return target.lowerBound }
        var value = self
        if clamp {
            value = value.clamped(to: source)
        }
        let t = (value - source.lowerBound) / (source.upperBound - source.lowerBound)
        return target.lowerBound + t * (target.upperBound - target.lowerBound)
    }
}

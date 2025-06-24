//
// Date.swift
// Swift-Extensions
//
// Created by Huy D. on 6/23/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

import Foundation

// MARK: - Date Extensions

public extension Date {
    /// Returns a new `Date` with the time set to midnight (00:00:00) of the same day, in the current calendar.
    ///
    /// - Returns: A new `Date` representing the start of the day (midnight).
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let startOfToday = now.startOfDay
    /// ```
    var startOfDay: Date {
        Calendar.current.startOfDay(for: self)
    }
}

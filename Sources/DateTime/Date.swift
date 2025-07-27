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


    /// Returns a new `Date` representing the end of the day (23:59:59) in the current calendar.
    ///
    /// - Returns: A new `Date` representing the last moment of the same day.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let endOfToday = now.endOfDay
    /// ```
    var endOfDay: Date? {
        var components = DateComponents(day: 1, second: -1)
        return Calendar.current.date(byAdding: components, to: startOfDay)
    }


    /// Returns a new `Date` by adding the specified number of days.
    ///
    /// - Parameter days: The number of days to add (negative to subtract).
    /// - Returns: A new `Date` offset by the given number of days, or `nil` if the calculation fails.
    ///
    /// # Usage
    /// ```
    /// let today = Date()
    /// let nextWeek = today.addingDays(7)
    /// ```
    func addingDays(_ days: Int) -> Date? {
        Calendar.current.date(byAdding: .day, value: days, to: self)
    }
}

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
        let components = DateComponents(day: 1, second: -1)
        return Calendar.current.date(byAdding: components, to: startOfDay)
    }


    /// Returns a new `Date` representing the start of the week in the current calendar.
    ///
    /// - Returns: A `Date` for the beginning of the week (e.g., Sunday or Monday depending on locale).
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let start = now.startOfWeek
    /// ```
    var startOfWeek: Date? {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        return calendar.date(from: components)
    }


    /// Returns a new `Date` representing the end of the week (23:59:59 on the last day) in the current calendar.
    ///
    /// - Returns: A `Date` for the final moment of the week (e.g., Saturday or Sunday depending on locale).
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let end = now.endOfWeek
    /// ```
    var endOfWeek: Date? {
        guard let start = startOfWeek else { return nil }
        let components = DateComponents(day: 7, second: -1)
        return Calendar.current.date(byAdding: components, to: start)
    }


    /// Returns a new `Date` representing the start of the month (00:00:00 on the first day) in the current calendar.
    ///
    /// - Returns: A new `Date` representing the beginning of the month.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let startOfMonth = now.startOfMonth
    /// ```
    var startOfMonth: Date? {
        let components = Calendar.current.dateComponents([.year, .month], from: self)
        return Calendar.current.date(from: components)
    }


    /// Returns a new `Date` representing the end of the month (23:59:59 on the last day) in the current calendar.
    ///
    /// - Returns: A new `Date` representing the final moment of the month.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let endOfMonth = now.endOfMonth
    /// ```
    var endOfMonth: Date? {
        guard let startOfNextMonth = Calendar.current.date(byAdding: DateComponents(month: 1), to: startOfMonth ?? self) else {
            return nil
        }
        return Calendar.current.date(byAdding: DateComponents(second: -1), to: Calendar.current.startOfDay(for: startOfNextMonth))
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

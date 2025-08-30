//
// Date+Calculation.swift
// Swift-Extensions
//
// Created by Huy D. on 8/21/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

import Foundation

// MARK: - Date Calculation Extensions

public extension Date {
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

    
    /// Finds the next occurrence of the specified weekday after the current date.
    ///
    /// - Parameter weekday: The weekday to find (1 = Sunday, 2 = Monday, ..., 7 = Saturday).
    /// - Returns: The next `Date` matching the specified weekday, or `nil` if not found.
    ///
    /// # Usage
    /// ```
    /// let today = Date()
    /// let nextMonday = today.next(2)
    /// ```
    func next(_ weekday: Int) -> Date? {
        var components = DateComponents()
        components.weekday = weekday
        return Calendar.current.nextDate(after: self, matching: components, matchingPolicy: .nextTime)
    }


    /// Calculates the number of days between this date and another date.
    ///
    /// - Parameter date: The date to compare with.
    /// - Returns: The number of days between the two dates (can be negative).
    ///
    /// # Usage
    /// ```
    /// let start = Date()
    /// let end = start.addingDays(3)!
    /// let diff = start.daysBetween(end) // 3
    /// ```
    func daysBetween(_ date: Date) -> Int {
        let calendar = Calendar.current
        let start = calendar.startOfDay(for: self)
        let end = calendar.startOfDay(for: date)
        return calendar.dateComponents([.day], from: start, to: end).day ?? 0
    }
}

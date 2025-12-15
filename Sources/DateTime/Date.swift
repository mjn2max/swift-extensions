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

// MARK: - Date Extensions - Day

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
    
    /// Returns a new `Date` representing yesterday at the same clock time in the current calendar.
    ///
    /// - Returns: A new `Date` one day before the receiver, preserving the time of day.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let value = now.yesterday
    /// ```
    var yesterday: Date {
        Calendar.current.date(byAdding: .day, value: -1, to: self) ?? self
    }
    
    /// Returns a new `Date` representing tomorrow at the same clock time in the current calendar.
    ///
    /// - Returns: A new `Date` one day after the receiver, preserving the time of day.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let value = now.tomorrow
    /// ```
    var tomorrow: Date {
        Calendar.current.date(byAdding: .day, value: 1, to: self) ?? self
    }

    /// Returns a new `Date` representing the start of the next day (00:00:00) in the current calendar.
    ///
    /// - Returns: A new `Date` at midnight of the day after the receiver.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let value = now.startOfNextDay
    /// ```
    var startOfNextDay: Date {
        Calendar.current.date(byAdding: .day, value: 1, to: startOfDay) ?? startOfDay
    }

    /// Returns a new `Date` representing the start of the previous day (00:00:00) in the current calendar.
    ///
    /// - Returns: A new `Date` at midnight of the day before the receiver.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let value = now.startOfPreviousDay
    /// ```
    var startOfPreviousDay: Date {
        Calendar.current.date(byAdding: .day, value: -1, to: startOfDay) ?? startOfDay
    }

    /// Returns a new `Date` representing 12:00 (noon) on the same day in the current calendar.
    ///
    /// - Returns: A new `Date` at noon of the receiver's day.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let value = now.noon
    /// ```
    var noon: Date {
        let calendar = Calendar.current
        let start = calendar.startOfDay(for: self)
        return calendar.date(byAdding: DateComponents(hour: 12), to: start) ?? self
    }
    
    /// Returns a new `Date` representing the same clock time on the next day in the current calendar.
    ///
    /// - Returns: A new `Date` one day after the receiver, preserving the time of day.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let value = now.sameTimeNextDay
    /// ```
    var sameTimeNextDay: Date {
        Calendar.current.date(byAdding: .day, value: 1, to: self) ?? self
    }

    /// Returns a new `Date` representing the same clock time on the previous day in the current calendar.
    ///
    /// - Returns: A new `Date` one day before the receiver, preserving the time of day.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let value = now.sameTimePreviousDay
    /// ```
    var sameTimePreviousDay: Date {
        Calendar.current.date(byAdding: .day, value: -1, to: self) ?? self
    }
}

// MARK: - Date Extensions - Week

public extension Date {
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
    
    /// Returns a new `Date` representing the start of the next week in the current calendar.
    ///
    /// - Returns: A `Date` at the beginning of the week following the receiver's week.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let value = now.startOfNextWeek
    /// ```
    var startOfNextWeek: Date? {
        guard let start = startOfWeek else { return nil }
        return Calendar.current.date(byAdding: .weekOfYear, value: 1, to: start)
    }

    /// Returns a new `Date` representing the start of the previous week in the current calendar.
    ///
    /// - Returns: A `Date` at the beginning of the week preceding the receiver's week.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let value = now.startOfPreviousWeek
    /// ```
    var startOfPreviousWeek: Date? {
        guard let start = startOfWeek else { return nil }
        return Calendar.current.date(byAdding: .weekOfYear, value: -1, to: start)
    }
}

// MARK: - Date Extensions - Month

public extension Date {
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
    
    /// Returns a new `Date` representing the start of the next month (00:00:00 on the first day) in the current calendar.
    ///
    /// - Returns: A `Date` at the beginning of the month following the receiver's month.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let value = now.startOfNextMonth
    /// ```
    var startOfNextMonth: Date? {
        guard let start = startOfMonth else { return nil }
        return Calendar.current.date(byAdding: .month, value: 1, to: start)
    }

    /// Returns a new `Date` representing the start of the previous month (00:00:00 on the first day) in the current calendar.
    ///
    /// - Returns: A `Date` at the beginning of the month preceding the receiver's month.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let value = now.startOfPreviousMonth
    /// ```
    var startOfPreviousMonth: Date? {
        guard let start = startOfMonth else { return nil }
        return Calendar.current.date(byAdding: .month, value: -1, to: start)
    }
    
    /// Returns a new `Date` representing the middle of the month (15th at 12:00) in the current calendar.
    ///
    /// - Returns: A `Date` near the middle of the receiver's month for convenience.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let value = now.middleOfMonth
    /// ```
    var middleOfMonth: Date? {
        guard let start = startOfMonth else { return nil }
        var comps = DateComponents()
        comps.day = 14 // add 14 days to reach the 15th
        comps.hour = 12
        return Calendar.current.date(byAdding: comps, to: start)
    }
}

// MARK: - Date Extensions - Year

public extension Date {
    /// Returns the start of the year (January 1st at 00:00:00) for this date.
    ///
    /// - Returns: A new `Date` representing the beginning of the year.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let startOfYear = now.startOfYear
    /// ```
    var startOfYear: Date? {
        let components = Calendar.current.dateComponents([.year], from: self)
        return Calendar.current.date(from: components)
    }

    /// Returns a new `Date` representing the end of the year (December 31st at 23:59:59) in the current calendar.
    ///
    /// - Returns: A new `Date` representing the final moment of the year.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let endOfYear = now.endOfYear
    /// ```
    var endOfYear: Date? {
        guard let startOfNextYear = Calendar.current.date(byAdding: DateComponents(year: 1), to: startOfYear ?? self) else {
            return nil
        }
        return Calendar.current.date(byAdding: DateComponents(second: -1), to: Calendar.current.startOfDay(for: startOfNextYear))
    }

    /// Returns a new `Date` representing the start of the next year (January 1st at 00:00:00) in the current calendar.
    ///
    /// - Returns: A `Date` at the beginning of the year following the receiver's year.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let value = now.startOfNextYear
    /// ```
    var startOfNextYear: Date? {
        guard let start = startOfYear else { return nil }
        return Calendar.current.date(byAdding: .year, value: 1, to: start)
    }

    /// Returns a new `Date` representing the start of the previous year (January 1st at 00:00:00) in the current calendar.
    ///
    /// - Returns: A `Date` at the beginning of the year preceding the receiver's year.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let value = now.startOfPreviousYear
    /// ```
    var startOfPreviousYear: Date? {
        guard let start = startOfYear else { return nil }
        return Calendar.current.date(byAdding: .year, value: -1, to: start)
    }
}


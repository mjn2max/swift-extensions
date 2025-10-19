//
// Date+Bool.swift
// Swift-Extensions
//
// Created by Huy D. on 8/25/25
// mjn2max.github.io 😜
// 
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

import Foundation

// MARK: - Date Extensions - Return `Bool`

extension Date {
    /// Indicates whether the date falls on a weekend.
    ///
    /// - Returns: `true` if the date is a weekend, otherwise `false`.
    ///
    /// # Usage
    /// ```
    /// let today = Date()
    /// let isItWeekend = today.isWeekend
    /// ```
    var isWeekend: Bool {
        Calendar.current.isDateInWeekend(self)
    }
    
    /// Indicates whether the date is today.
    ///
    /// - Returns: `true` if the date is today, otherwise `false`.
    ///
    /// # Usage
    /// ```
    /// let now = Date()
    /// let check = now.isToday
    /// ```
    var isToday: Bool {
        Calendar.current.isDateInToday(self)
    }

    /// Indicates whether the date is yesterday.
    ///
    /// - Returns: `true` if the date is yesterday, otherwise `false`.
    ///
    /// # Usage
    /// ```
    /// let date = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
    /// let check = date.isYesterday
    /// ```
    var isYesterday: Bool {
        Calendar.current.isDateInYesterday(self)
    }

    /// Indicates whether the date is tomorrow.
    ///
    /// - Returns: `true` if the date is tomorrow, otherwise `false`.
    ///
    /// # Usage
    /// ```
    /// let date = Calendar.current.date(byAdding: .day, value: 1, to: Date())!
    /// let check = date.isTomorrow
    /// ```
    var isTomorrow: Bool {
        Calendar.current.isDateInTomorrow(self)
    }

    /// Indicates whether the date is in the past compared to the current time.
    ///
    /// - Returns: `true` if the date is earlier than now, otherwise `false`.
    ///
    /// # Usage
    /// ```
    /// let date = Date().addingTimeInterval(-3600)
    /// let check = date.isPast
    /// ```
    var isPast: Bool {
        self < Date()
    }

    /// Indicates whether the date is in the future compared to the current time.
    ///
    /// - Returns: `true` if the date is later than now, otherwise `false`.
    ///
    /// # Usage
    /// ```
    /// let date = Date().addingTimeInterval(3600)
    /// let check = date.isFuture
    /// ```
    var isFuture: Bool {
        self > Date()
    }

    /// Indicates whether the date is within the current year.
    ///
    /// - Returns: `true` if the date falls within the same year as today, otherwise `false`.
    ///
    /// # Usage
    /// ```
    /// let date = Date()
    /// let check = date.isThisYear
    /// ```
    var isThisYear: Bool {
        let calendar = Calendar.current
        return calendar.component(.year, from: self) == calendar.component(.year, from: Date())
    }

    /// Indicates whether the date is within the current month.
    ///
    /// - Returns: `true` if the date falls within the same month and year as today, otherwise `false`.
    ///
    /// # Usage
    /// ```
    /// let date = Date()
    /// let check = date.isThisMonth
    /// ```
    var isThisMonth: Bool {
        let calendar = Calendar.current
        let components1 = calendar.dateComponents([.year, .month], from: self)
        let components2 = calendar.dateComponents([.year, .month], from: Date())
        return components1.year == components2.year && components1.month == components2.month
    }
}

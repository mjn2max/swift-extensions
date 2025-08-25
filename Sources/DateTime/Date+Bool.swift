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
}

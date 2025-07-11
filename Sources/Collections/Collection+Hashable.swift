//
// Collection+Hashable.swift
// Swift-Extensions
//
// Created by Huy D. on 5/22/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

// MARK: - Collection Extensions

extension Collection where Element: Hashable {
    /// Returns an array with duplicate elements removed, preserving the unique elements from the original collection.
    ///
    /// - Returns: An array containing only the unique elements from the collection.
    ///
    /// # Usage
    /// ```
    /// let numbers = [1, 2, 2, 3, 4, 4, 5]
    /// let uniqueNumbers = numbers.uniqued() // [1, 2, 3, 4, 5]
    /// ```
    func uniqued() -> [Element] {
        let unique = Set(self)
        return Array(unique)
    }


    /// Returns a dictionary where the keys are the unique elements of the collection
    /// and the values are the number of times each element appears.
    ///
    /// # Usage
    /// ```
    /// let items = ["apple", "banana", "apple", "orange", "banana", "apple"]
    /// let frequencies = items.frequencies() // ["apple": 3, "banana": 2, "orange": 1]
    /// ```
    func frequencies() -> [Element: Int] {
        reduce(into: [:]) { counts, item in
            counts[item, default: 0] += 1
        }
    }
}

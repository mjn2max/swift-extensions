//
// Collection+Bool.swift
// Swift-Extensions
//
// Created by Huy D. on 7/6/25
// mjn2max.github.io 😜
// 
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

// MARK: - Collection Extensions - Return `Bool`

extension Collection {
    /// Returns a Boolean value indicating whether all elements in the collection satisfy the given predicate.
    ///
    /// - Parameter predicate: A closure that takes an element of the collection as its argument and returns a Boolean value.
    /// - Returns: `true` if all elements satisfy the predicate or the collection is empty; otherwise, `false`.
    ///
    /// # Usage
    /// ```
    /// let numbers = [2, 4, 6, 8]
    /// let allEven = numbers.allSatisfy { $0 % 2 == 0 } // true
    /// ```
    func allSatisfy(_ predicate: (Element) -> Bool) -> Bool {
        for element in self {
            if !predicate(element) {
                return false
            }
        }
        return true
    }
}

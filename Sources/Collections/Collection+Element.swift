//
// Collection+Element.swift
// Swift-Extensions
//
// Created by Huy D. on 7/6/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

// MARK: - Collection Extensions - Return `Element`

extension Collection {
    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    ///
    /// - Parameter index: The index of the element to retrieve.
    /// - Returns: The element at `index` if it exists, otherwise `nil`.
    ///
    /// # Usage
    /// ```
    /// let array = ["a", "b", "c"]
    /// let value = array[safe: 2] // "c"
    /// let missing = array[safe: 3] // nil
    /// ```
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

//
// Collection.swift
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
}

extension Collection {
    /// Splits the collection into chunks of a given size.
    ///
    /// - Parameter size: The size of each chunk.
    /// - Returns: An array of arrays, each containing at most `size` elements.
    ///
    /// # Usage
    /// ```
    /// let numbers = [1, 2, 3, 4, 5, 6, 7]
    /// let chunks = numbers.chunked(into: 3)
    /// // [[1, 2, 3], [4, 5, 6], [7]]
    /// ```
    func chunked(into size: Int) -> [[Element]] {
        guard size > 0 else { return [] }
        var result: [[Element]] = []
        var chunk: [Element] = []

        for element in self {
            chunk.append(element)
            if chunk.count == size {
                result.append(chunk)
                chunk.removeAll(keepingCapacity: true)
            }
        }

        if !chunk.isEmpty {
            result.append(chunk)
        }

        return result
    }
}

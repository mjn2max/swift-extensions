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

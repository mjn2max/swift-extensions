//
// Collection+Array.swift
// Swift-Extensions
//
// Created by Huy D. on 7/6/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

// MARK: - Collection Extensions - Return `Array`

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


    /// Returns a new array with duplicate elements removed, preserving order.
    ///
    /// # Usage
    /// ```
    /// let items = [1, 2, 2, 3, 1]
    /// let unique = items.uniqued() // [1, 2, 3]
    /// ```
    func uniqued<T: Hashable>() -> [T] where Element == T {
        var seen = Set<T>()
        return filter { seen.insert($0).inserted }
    }
}

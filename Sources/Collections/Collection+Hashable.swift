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
    /// Returns a Boolean value indicating whether all elements in the collection are unique.
    ///
    /// # Usage
    /// ```
    /// let values = [1, 2, 3, 4, 5]
    /// let isAllUnique = values.allUnique() // true
    ///
    /// let duplicates = [1, 2, 2, 3]
    /// let isAllUnique2 = duplicates.allUnique() // false
    /// ```
    func allUnique() -> Bool {
        Set(self).count == count
    }


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


    /// Returns a Boolean value indicating whether the collection contains any duplicate elements.
    ///
    /// # Usage
    /// ```
    /// let values = [1, 2, 3, 2]
    /// let hasDupes = values.hasDuplicates() // true
    /// ```
    func hasDuplicates() -> Bool {
        return Set(self).count != count
    }


    /// Returns an array of elements that appear more than once in the collection.
    ///
    /// # Usage
    /// ```
    /// let items = ["apple", "banana", "apple", "orange", "banana", "apple"]
    /// let duplicates = items.duplicates() // ["apple", "banana"]
    /// ```
    func duplicates() -> [Element] {
        var seen = Set<Element>()
        var duplicates = Set<Element>()
        for item in self {
            if !seen.insert(item).inserted {
                duplicates.insert(item)
            }
        }
        return Array(duplicates)
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


    /// Returns the most frequent element in the collection and its frequency.
    ///
    /// # Usage
    /// ```
    /// let items = ["apple", "banana", "apple", "orange", "banana", "apple"]
    /// let mostCommon = items.mostFrequent() // ("apple", 3)
    /// ```
    func mostFrequent() -> (element: Element, count: Int)? {
        let frequencyMap = self.frequencies()
        if let (key, value) = frequencyMap.max(by: { $0.value < $1.value }) {
            return (element: key, count: value)
        }
        return nil
    }


    /// Returns the top N most frequent elements and their counts, sorted by frequency descending.
    ///
    /// - Parameter n: The maximum number of elements to return.
    /// - Returns: An array of tuples containing the element and its frequency.
    ///
    /// # Usage
    /// ```
    /// let items = ["a", "b", "a", "c", "b", "a", "d"]
    /// let top2 = items.mostFrequent(count: 2) // [("a", 3), ("b", 2)]
    /// ```
    func mostFrequent(count n: Int) -> [(element: Element, count: Int)] {
        frequencies()
            .sorted(by: { $0.value > $1.value })
            .prefix(n)
            .map { (element: $0.key, count: $0.value) }
    }


    /// Returns the least frequent element in the collection and its frequency.
    ///
    /// # Usage
    /// ```
    /// let items = ["apple", "banana", "apple", "orange", "banana", "banana"]
    /// let leastCommon = items.leastFrequent() // ("orange", 1)
    /// ```
    func leastFrequent() -> (element: Element, count: Int)? {
        let frequencyMap = self.frequencies()
        if let (key, value) = frequencyMap.min(by: { $0.value < $1.value }) {
            return (element: key, count: value)
        }
        return nil
    }


    /// Returns the bottom N least frequent elements and their counts, sorted by frequency ascending.
    ///
    /// - Parameter n: The maximum number of elements to return.
    /// - Returns: An array of tuples containing the element and its frequency.
    ///
    /// # Usage
    /// ```
    /// let items = ["a", "b", "a", "c", "b", "a", "d"]
    /// let bottom2 = items.leastFrequent(n: 2) // [("c", 1), ("d", 1)]
    /// ```
    func leastFrequent(n: Int) -> [(element: Element, count: Int)] {
        frequencies()
            .sorted(by: { $0.value < $1.value })
            .prefix(n)
            .map { (element: $0.key, count: $0.value) }
    }


    /// Returns an array of tuples containing each element and its percentage frequency.
    ///
    /// # Usage
    /// ```
    /// let items = ["a", "b", "a", "c", "b", "a"]
    /// let percentage = items.frequencyPercentage()
    /// // [("a", 50.0), ("b", 33.33), ("c", 16.67)]
    /// ```
    func frequencyPercentage() -> [(element: Element, percentage: Double)] {
        let total = Double(count)
        guard total > 0 else { return [] }
        return frequencies().map { (element: $0.key, percentage: (Double($0.value) / total) * 100) }
            .sorted { $0.percentage > $1.percentage }
    }


    /// Groups elements in the collection by their frequency count.
    ///
    /// # Usage
    /// ```
    /// let items = ["apple", "banana", "apple", "orange", "banana", "banana"]
    /// let groupedByFrequency = items.groupedByFrequency()
    /// // [1: ["orange"], 2: ["apple"], 3: ["banana"]]
    /// ```
    func groupedByFrequency() -> [Int: [Element]] {
        let frequencyMap = frequencies()
        var result: [Int: [Element]] = [:]
        for (element, count) in frequencyMap {
            result[count, default: []].append(element)
        }
        return result
    }
}

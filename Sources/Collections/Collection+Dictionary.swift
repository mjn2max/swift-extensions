//
// Collection+Dictionary.swift
// Swift-Extensions
//
// Created by Huy D. on 7/7/25
// mjn2max.github.io 😜
//
// Copyright © 2025. All rights reserved.
// CodePassion.dev
//

// MARK: - Collection Extensions - Return `Dictionary`

extension Collection {
    /// Groups the elements of the collection into a dictionary according to a given key.
    ///
    /// - Parameter keyForValue: A closure that maps an element to a key.
    /// - Returns: A dictionary in which the keys are the group identifiers returned by `keyForValue`, and the values are arrays of elements that correspond to each key.
    ///
    /// # Usage
    /// ```
    /// let names = ["Anna", "Alex", "Brian", "Jack"]
    /// let grouped = names.grouped { $0.first! } // ["A": ["Anna", "Alex"], "B": ["Brian"], "J": ["Jack"]]
    /// ```
    func grouped<Key: Hashable>(by keyForValue: (Element) -> Key) -> [Key: [Element]] {
        Dictionary(grouping: self, by: keyForValue)
    }


    /// Builds a dictionary from the collection by mapping each element to a key-value pair.
    ///
    /// - Parameters:
    ///   - keySelector: A closure that produces a key from an element.
    ///   - valueSelector: A closure that produces a value from an element.
    /// - Returns: A dictionary containing keys and values created by the corresponding selectors.
    ///
    /// # Usage
    /// ```
    /// let words = ["apple", "banana", "cherry"]
    /// let dict = words.toDictionary(keySelector: { $0.first! }, valueSelector: { $0.uppercased() })
    /// // ["a": "APPLE", "b": "BANANA", "c": "CHERRY"]
    /// ```
    func toDictionary<K: Hashable, V>(keySelector: (Element) -> K, valueSelector: (Element) -> V) -> [K: V] {
        reduce(into: [K: V]()) { dict, element in
            dict[keySelector(element)] = valueSelector(element)
        }
    }
}

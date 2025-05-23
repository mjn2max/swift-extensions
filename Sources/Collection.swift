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

extension Collection where Element: Hashable {
    func uniqued() -> [Element] {
        let unique = Set(self)
        return Array(unique)
    }
}

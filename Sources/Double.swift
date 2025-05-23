//
// Double.swift
// Swift-Extensions
//
// Created by Huy D. on 10/14/24
// mjn2max.github.io 😜
// 
// Copyright © 2024. All rights reserved.
// CodePassion.dev
//

extension Double {
    func celsiusToFahrenheit() -> Double {
        return self * 9 / 5 + 32
    }

    func fahrenheitToCelsius() -> Double {
        return (self - 32) * 5 / 9
    }
}

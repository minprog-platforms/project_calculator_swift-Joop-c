//
//  calculatorStruct.swift
//  Calculator
//
//  Created by Job Cerfontain on 11/04/2022.
//

import Foundation
import SwiftUI

struct Calculator {
    let numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    let functions = ["+", "-", "*", "/"]
    
    func Multiply(x: Float, y: Float) -> Float {
        return x * y
    }
    
    func Add(x: Float, y: Float) -> Float {
        return x + y
    }
    
    func Substract(x: Float, y: Float) -> Float {
            return x - y
    }
    
    func divide(x: Float, y: Float) -> Float {
        return x / y
    }
}

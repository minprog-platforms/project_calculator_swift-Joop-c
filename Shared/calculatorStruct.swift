//
//  calculatorStruct.swift
//  Calculator
//
//  Created by Job Cerfontain on 11/04/2022.
//

import Foundation
import SwiftUI

struct Calculator {
    
    enum Operations{
        case plus
        case min
        case multiply
        case divide
    }

    var currentNumber: Float = 0
    var previousNumber: Float = 0
    var currentOperation = Operations.plus
    var inputtingNumber = true
    var display = ""
    
    mutating func numberPress(_ x: Float) -> Void{
        if inputtingNumber{
            self.currentNumber = 10 * self.currentNumber + x
        }
        else{
            self.currentNumber = x
            self.inputtingNumber = true
        }
        self.display = String(currentNumber)
    }
    
    mutating func functionPress(operation: Operations) -> Void{
        self.calculate()
        self.currentOperation = operation
        self.inputtingNumber = false
    }
    
    mutating func calculate()-> Void{
        var result: Float
        switch currentOperation {
        case .plus:
            result = self.previousNumber + self.currentNumber
        case .min:
            result = self.previousNumber - self.currentNumber
        case .multiply:
            result = self.previousNumber * self.currentNumber
        case .divide:
            result = self.previousNumber / self.currentNumber
        }
        self.display = String(result)
        self.previousNumber = result
    }
    
}

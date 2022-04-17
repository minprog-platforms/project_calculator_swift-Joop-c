//
//  calculatorStruct.swift
//  Calculator
//
//  Created by Job Cerfontain on 11/04/2022.
//

import Foundation
import SwiftUI
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
        case none
    }

    var currentNumberString: String = ""
    var previousNumber: Float?
    
    var currentOperation: Operations = .none
    var hasDecimal: Bool = false
    var display = "0"
    
    mutating func numberPress(_ x: String) -> Void{
        self.currentNumberString.append(x)
        self.display = self.currentNumberString
    }
    
    mutating func functionPress(operation: Operations) -> Void{
        self.calculate()
        self.currentOperation = operation
        if self.currentNumberString != ""{
            self.previousNumber = Float(self.currentNumberString)
        }
        self.currentNumberString = ""
        self.hasDecimal = false
    }
    
    mutating func allClear() -> Void{
        self.currentNumberString = ""
        self.display = "0"
        self.previousNumber = nil
        self.currentOperation = Operations.none
        self.hasDecimal = false
    }
    
    mutating func calculate()-> Void{
        if self.currentNumberString != "" && self.previousNumber != nil{
            var result: Float
            switch currentOperation {
            case .plus:
                result = self.previousNumber! + Float(self.currentNumberString)!
            case .min:
                result = self.previousNumber! - Float(self.currentNumberString)!
            case .multiply:
                result = self.previousNumber! * Float(self.currentNumberString)!
            case .divide:
                result = self.previousNumber! / Float(self.currentNumberString)!
            case .none:
                result = Float(self.currentNumberString)!
            }
            self.currentNumberString = String(result)
            self.display = self.currentNumberString
            self.previousNumber = Float(self.currentNumberString)
            self.currentNumberString = ""
            self.hasDecimal = false
            self.currentOperation = .none
            }
        }
    
    mutating func decimalButton() -> Void{
        if !self.hasDecimal{
            if self.currentNumberString == ""{
                self.currentNumberString = "0."
            }
            else{
                self.currentNumberString.append(".")
            }
        }
        self.hasDecimal = true
        self.display = self.currentNumberString
    }
    mutating func plusMinusButton() -> Void{
        if self.currentNumberString != ""{
            self.currentNumberString.insert("-", at: self.currentNumberString.startIndex)
        }
        self.display = self.currentNumberString
    }
}

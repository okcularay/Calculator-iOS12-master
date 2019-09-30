//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Sky on 9/27/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    
    private var intermediateCalculation: (n1: Double, calcMethod: String)?
    
    mutating func setNumber (_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let n = number {
            switch symbol {
            case "+/-": return -1*n
            case "AC": return 0
            case "%": return n/100
            case "=": return performTwoNumCalculation(n2: n)
            default : intermediateCalculation = (n, symbol)
            }
        }
        
        return nil
    }
    
    private func performTwoNumCalculation(n2: Double) -> Double? {
        if let n1 = intermediateCalculation?.n1, let operation = intermediateCalculation?.calcMethod {
            switch operation {
            case "+": return n1+n2
            case "-": return n1-n2
            case "×": return n1*n2
            case "÷": return n1/n2
            default: fatalError()
            }
        }
        return nil
    }
    
}

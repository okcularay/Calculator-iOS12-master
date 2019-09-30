//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Sky on 9/27/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic {
    
    var number: Double
    
    init (number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        if symbol == "+/-" {
            return -1*number
        }
        else if symbol == "AC" {
            return 0
        }
        else if symbol == "%" {
            return number/100
        }
        
        return nil
    }
    
}

//
//  Calculator.swift
//  IntroSwift
//
//  Created by Moises on 7/14/16.
//  Copyright © 2016 Moises. All rights reserved.
//

import Foundation

class Calculator{
    let SUM = 1
    let SUBSTRACT = 2
    let MULTIPLICATION = 3
    let DIVIDE = 4
    
    var message : String = ""
    var total: Double = 0.0
    
    func startOperation(numA: Double, numB: Double, operation: Int) -> String{
        var total: Double = 0.0
        var result: String = ""
        
        switch operation {
        case SUM:
            total = suma(numA, b: numB)
            result = "Sum is " + String(total)
        case SUBSTRACT:
            total = substract(numA,b: numB)
            result = "Substract is \(total)"
        case MULTIPLICATION:
            total = multiplication(numA, b: numB)
            result = "Multiplication is " + String(total)
        case DIVIDE:
            total = divide(numA, b: numB)
            result = "Divide is " + String(total)
        default:
            result = "No result"
        }
        
        return result
    }
    
    func suma(a: Double, b: Double) -> Double{
        total = a + b
        return total
    }
    
    func substract(a: Double, b: Double) -> Double{
        total = a - b
        return total
    }
    
    func multiplication(a: Double, b: Double) -> Double{
        total = a * b
        return total
    }
    
    func divide(a: Double, b: Double) -> Double{
        total = a / b
        return total
    }
}
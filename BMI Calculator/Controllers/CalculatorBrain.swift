//
//  CalBrain.swift
//  BMI Calculator
//
//  Created by Binbin Mu on 10/14/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    let height: Float?
    let weight: Float?
    
    init(_ height: Float?, _ weight: Float?) {
        self.height = height
        self.weight = weight
    }
    
    var bmi: String! {
        if let h = height, let w = weight {
            return String(format: "%.1f", w / (h * h))
        }
        return "0.0"
    }
}

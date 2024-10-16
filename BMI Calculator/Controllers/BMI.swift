//
//  BMI.swift
//  BMI Calculator
//
//  Created by Binbin Mu on 10/15/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct BMI {
    private var _value: Float
    
    init(_ value: Float) {
        _value = value
    }
    
    var value: Float {
        get {
            return _value
        }
    }
    
    var color: UIColor? {
        switch _value {
        case _ where _value < 18.5:
            return UIColor(hex: "#FFBF61")
        case _ where _value >= 18.5 && _value <= 24.9:
            return UIColor(hex: "#C4D7FF")
        case _ where _value > 24.9:
            return UIColor(hex: "#E78F81")
        default:
            return UIColor(hex: "#B7B7B7")
        }
    }
    
    var advice: String {
        switch _value {
        case _ where _value < 18.5:
            return "Eat more pies!"
        case _ where _value >= 18.5 && _value <= 24.9:
            return "Fit as a fiddle!"
        case _ where _value > 24.9:
            return "Eat less pies!"
        default:
            return "Nothing to say!"
        }
    }

}

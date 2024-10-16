//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Binbin Mu on 10/14/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiRes: BMI?
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let b = bmiRes {
            resultLabel.text = String(format: "%.2f", b.value)
            adviceLabel.text = b.advice
            view.backgroundColor = b.color
        } else {
            resultLabel.text = "No Result"
            adviceLabel.text = "Try again later"
        }
    }
    

    @IBAction func recalButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}

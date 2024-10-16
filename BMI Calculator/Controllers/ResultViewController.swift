//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Binbin Mu on 10/14/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiRes: String!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiRes
        // Do any additional setup after loading the view.
    }
    

    @IBAction func recalButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
}

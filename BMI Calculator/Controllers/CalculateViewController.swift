//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    private var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightSelected(_ sender: UISlider) {
        let hStr = String(format: "%.2f", sender.value)
        heightLabel.text = "\(hStr)m"
        
    }
    
    @IBAction func weightSelected(_ sender: UISlider) {
        let wStr = String(format: "%.0f", weightSlider.value)
        weightLabel.text = "\(wStr)kg"
    }
    
    @IBAction func calButtonPressed(_ sender: UIButton) {
        let height: Float = heightSlider.value
        let weight: Float = weightSlider.value
        
        let calculatorBrain: CalculatorBrain = CalculatorBrain(height, weight)
        bmi = calculatorBrain.calculateBMI()
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    // this is how to pass data from current controller to another controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiRes = bmi
        }
    }
}


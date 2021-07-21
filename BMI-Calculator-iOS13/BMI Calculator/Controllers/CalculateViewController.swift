//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        let height = String(format: "%.2f", sender.value)
        
        heightLabel.text = "\(height)m"
        
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        let weight = String(format: "%.0f", sender.value)
        
        weightLabel.text = "\(weight)kg"
        
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height: height, weight: weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    // this lets us connect the first screen to the second screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // this if is saying that if the segue of first screen is equal to the goToResult then it will run our second screen the ResultViewController
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            // accessing the ResultViewController to get bmiValue and then equaling it to access calcBrain to get the bmiValue
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            //same as above but for the advice
            destinationVC.advice = calculatorBrain.getAdvice()
            // same as above but for the color
            destinationVC.color = calculatorBrain.getColor()
        }
    }

}


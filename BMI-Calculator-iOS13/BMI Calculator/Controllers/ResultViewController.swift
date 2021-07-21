//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Spencer Merrill on 6/29/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    // all these were made optionals because we don't know what the user will put in for the value yet and once we know their value then we can give the correct color and advice
    var bmiValue: String?
    
    var advice: String?
    
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // here we changed the text value of the labels to equal the value the user will put in and then the advice will be the advice that is set in the CalculatorBrain
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
      
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        // this lets us hit the recalculate button and go back to the main screen by dismissing the second screen
        self.dismiss(animated: true, completion: nil)
    }

}

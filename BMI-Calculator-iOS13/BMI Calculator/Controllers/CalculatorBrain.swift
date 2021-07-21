//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Spencer Merrill on 6/29/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit
// this struct is containing all the information we need to make the app run while the controllers will call for this info and then update the views 
struct CalculatorBrain {
    // this is accessing the BMI Struct
    var bmi: BMI?
    // this method is turning the bmi value into a 1 decimal point and returning the result
    func getBMIValue () -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    // this is looking into the BMI struct to see if advice is nil and if not will print the advice but if nil will print no advice
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    // same thing as above just making sure there is a color
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    // this method is taking in a float number or a decimal number and then creating the bmiValue by dividing the weight by height squared
    mutating func calculateBMI (height: Float, weight: Float) {
       let bmiValue = weight / pow(height, 2)
        // saying if bmi is less than 18.5 then print this advice and use color blue
        if bmiValue < 18.5 {
            bmi = /* this is the BMI struct*/ BMI(value: bmiValue, advice: "Eat more cakes! You look like bones", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        // saying if bmi is less than 24.9 then print this advice and use color green
        else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "How you doin?! You lookin fit!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
        // saying if bmi is over 24.9 then print this advice and use color red
        else {
            bmi = BMI(value: bmiValue, advice: "Daayyyuuuummm, you fat. Lay off the cakes!", color: #colorLiteral(red: 0.9311256409, green: 0.3307684362, blue: 0.1830726266, alpha: 1))
        }
         
    }
}

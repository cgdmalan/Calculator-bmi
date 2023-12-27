//
//  BMIBrain.swift
//  BMI Calculator
//
//  Created by Çiğdem Alan on 24.07.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct BMIBrain {
    
    var bmi : BmiModel?
    
    
    
    
    func getValue() -> String {
        
        let valuetype = String(format: "%.1f",bmi?.value ?? 0.0)
        return valuetype
    }
    
    func getColor () -> UIColor {
        
        return bmi?.color ?? UIColor.white
    }
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? "No Advice"
    }
    
    
    
    mutating func calcutaleBMI (weight : Float , height : Float){
        
       let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            
            bmi = BmiModel(value: bmiValue, advice: "EAT MORE PLEASE!", color: UIColor.blue)
            
        } else if bmiValue < 24.9 {
            
            bmi = BmiModel(value: bmiValue, advice: " YOU LOOK GREAT!", color: UIColor.green)
            
        } else {
            
            bmi = BmiModel(value: bmiValue, advice:"EAT LESS PLEASE!" , color: UIColor.red)
            
        }
        
       
}
}

//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    var bmiCalculate = BMIBrain()
   // var bmiValue : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = " \(height) m "
        
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
    
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = " \(weight) kg"
        
    }
    
    @IBAction func calculateClicked(_ sender: UIButton) {
        
        let weight = weightSlider.value
        let height = heightSlider.value
        
        bmiCalculate.calcutaleBMI(weight: weight, height: height)
    
       performSegue(withIdentifier: "goToSecondVC", sender: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToSecondVC" {
            
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.bmiValue = bmiCalculate.getValue()
            destinationVC.advice = bmiCalculate.getAdvice()
            destinationVC.color = bmiCalculate.getColor()
            
         
         
            
            
            
        }
        
        
        
    }
    
}


//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Çiğdem Alan on 24.07.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var valueLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
  
    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        
      
            valueLabel.text = bmiValue
            adviceLabel.text = advice
            view.backgroundColor = color
       
        
        
        
    }
    

    @IBAction func recalculateClicked(_ sender: UIButton) {
        
        
        dismiss(animated: true)
        
        
    }
    

}

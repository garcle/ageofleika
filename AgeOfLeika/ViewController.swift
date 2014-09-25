//
//  ViewController.swift
//  AgeOfLeika
//
//  Created by Gary Cleal on 9/25/14.
//  Copyright (c) 2014 Appsotively. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageInDogYearsLabel: UILabel!
    
    @IBOutlet weak var ageInHumanYearsTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButton(sender: UIButton) {
        let humanYears = ageInHumanYearsTextField.text.toInt()!
        let ageInDogYears = humanYears * 7
        ageInDogYearsLabel.text = "Age in Dog Years \(ageInDogYears)"
        ageInHumanYearsTextField.resignFirstResponder()
        
    }


    @IBAction func convertToRealDogYearsButton(sender: UIButton) {
        let humanYears = Double((ageInHumanYearsTextField.text as NSString).doubleValue)
        var ageInDogYears:Double
        
        if humanYears <= 2{
            ageInDogYears = humanYears * 10.5
        }else{
            ageInDogYears = 21 + (humanYears-2) * 4
        }
        ageInDogYearsLabel.text = "Real Age in Dog Years \(ageInDogYears)"
        ageInHumanYearsTextField.resignFirstResponder()
    }
}


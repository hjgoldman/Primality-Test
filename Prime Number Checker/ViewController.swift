//
//  ViewController.swift
//  Prime Number Checker
//
//  Created by Hayden Goldman on 3/15/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel :UILabel!
    @IBOutlet weak var resultTextField :UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func resultButtonPressed() {
        
        let primeNumberChecker = PrimeNumberChecker()
        
        guard let n = Int(self.resultTextField.text!) else {
            
            self.resultLabel.text = "This is not a integer"
            return
        }
        
        let result = primeNumberChecker.primalityTest(n: n)
        
        if result == true {
            
            self.resultLabel.text = "This is a prime number"
        
        } else if result == false {
            
            self.resultLabel.text = "This is not a prime number"
        }
    }
    


}


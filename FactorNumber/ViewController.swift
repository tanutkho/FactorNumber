//
//  ViewController.swift
//  FactorNumber
//
//  Created by Tanut Khositprasert on 2/6/2561 BE.
//  Copyright © 2561 Tanut Khositprasert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var factorTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func resultButton(_ sender: Any) {
        
        let numberString = factorTextField.text
        print("numberString ==> \(String(describing: numberString))")
        
        var timesInt = 1
        var showResultStrings = [""]
        var showResultString = ""
        
        
        while timesInt <= 12 {
            
            let answerInt = Int(numberString!)! * timesInt
            showResultStrings.append(String(answerInt))
            
            
            showResultString = showResultString + showResultStrings[timesInt] + "\n"
            
            print("Answer ==> \(showResultString)")
            
            timesInt += 1
        }
        
        resultLabel.text = showResultString
        
    } //resultButton
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


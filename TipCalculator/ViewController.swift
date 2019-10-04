//
//  ViewController.swift
//  TipCalculator
//
//  Created by Christian Alexander Valle Castro on 9/8/19.
//  Copyright © 2019 valle.co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billField: UITextField! // we create a outlet whenever we need to acceess the value
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true);    // where ever this user taps the screen will stop editing.
    }
    
    @IBAction func calculateTip(_ sender: Any) {  // action is editing changed. Evey time new tip is
                                                  // tip needs to be calculated.
        
   
    let billAmount = Double(billField.text!) ?? 0  // !to unrap this optional. Might be nil so we dont know. ?? 0 if left side is invalid then change it to 0
    let tipPercentage = [0.15,0.20, 0.25]
    let tip = billAmount * tipPercentage[tipControl.selectedSegmentIndex]
    let total = billAmount + tip
        
    tipLabel.text = String(format:"$%.2f", tip)
    totalLabel.text = String(format:"$%.2f",total)

        
    }
    
   
    
}


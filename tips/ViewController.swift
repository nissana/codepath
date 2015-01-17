//
//  ViewController.swift
//  tips
//
//  Created by Nissana Akranavaseri on 1/4/15.
//  Copyright (c) 2015 NA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var tipLabel2: UILabel!
    @IBOutlet weak var tipLabel3: UILabel!
    @IBOutlet weak var tipLabel4: UILabel!
    @IBOutlet weak var tipLabel5: UILabel!

    @IBOutlet weak var totalLabel2: UILabel!
    @IBOutlet weak var totalLabel3: UILabel!
    @IBOutlet weak var totalLabel4: UILabel!
    @IBOutlet weak var totalLabel5: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.2, 0.22]
        var tipPercentage = tipPercentages [tipControl.selectedSegmentIndex]
        
        
        var billAmount = billField.text._bridgeToObjectiveC().doubleValue
        
        var tip = billAmount*tipPercentage
        var total = billAmount+tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
    
        tipLabel.text = String(format: "$%.2f", tip)
        tipLabel2.text = String(format: "$%.2f", tip/2.0)
        tipLabel3.text = String(format: "$%.2f", tip/3.0)
        tipLabel4.text = String(format: "$%.2f", tip/4.0)
        tipLabel5.text = String(format: "$%.2f", tip/5.0)
        
        totalLabel.text = String(format: "$%.2f", total)
        totalLabel2.text = String(format: "$%.2f", total/2.0)
        totalLabel3.text = String(format: "$%.2f", total/3.0)
        totalLabel4.text = String(format: "$%.2f", total/4.0)
        totalLabel5.text = String(format: "$%.2f", total/5.0)
      
        
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}


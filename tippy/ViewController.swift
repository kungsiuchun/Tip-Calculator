//
//  ViewController.swift
//  tippy
//
//  Created by SiuChun Kung on 8/29/18.
//  Copyright © 2018 SiuChun Kung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var splitControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let split = [1.0,2.0,3.0,4.0]
        let tipPercentage = [0.15, 0.18 , 0.20]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = (bill + tip) / split[splitControl.selectedSegmentIndex]
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}


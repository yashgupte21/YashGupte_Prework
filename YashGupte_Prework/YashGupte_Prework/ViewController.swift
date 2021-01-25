//
//  ViewController.swift
//  YashGupte_Prework
//
//  Created by Yash Gupte on 1/24/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount fromtext field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get total tip by multiplying tip * tipPercentges
        let tipPercentges = [0.15,0.18,0.2]
        
        let tip = bill * tipPercentges[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        // update tip AmountLabel
        tipAmountLabel.text = String(format: "$%.2f",tip)
        
        // update tip label
        totalLabel.text = String(format:"$%.2f", total)
    }
    
}


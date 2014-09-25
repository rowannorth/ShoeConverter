//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Rowan North on 9/24/14.
//  Copyright (c) 2014 Rowan North. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = Double((mensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.0
        mensConvertedShoeSizeLabel.hidden = false
        let stringWithUpdatedShoeSize = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize
        
        mensShoeSizeTextField.resignFirstResponder()
    }
    
    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
        womensShoeSizeTextField.resignFirstResponder()
    }
   
    
}


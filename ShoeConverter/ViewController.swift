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
        
        let conversionConstant = 30.0
        
        if self.mensShoeSizeTextField.text.isEmpty {
            let warningAlert = UIAlertView(title: "Hey, that's not a size!", message: "Please enter a valid shoe size", delegate: self, cancelButtonTitle: "Ok")
            
            warningAlert.show()
        } else {
            
            let sizeFromTextField = Double((mensShoeSizeTextField.text as NSString).doubleValue)
            
            let updatedMensShoeSize = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
            
            mensConvertedShoeSizeLabel.text = updatedMensShoeSize
            mensConvertedShoeSizeLabel.hidden = false
        }
        
        
        mensShoeSizeTextField.resignFirstResponder()
    }
    
    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton) {
        
        let conversionConstant = 30.5
        
        if self.womensShoeSizeTextField.text.isEmpty {
            
            let warningAlert = UIAlertView(title: "Hey, that's not a size!", message: "Please enter a valid shoe size", delegate: self, cancelButtonTitle: "Ok")
            
            warningAlert.show()
        } else {
            
            let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
            
            let updatedWomensShoeSize = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
            
            womensConvertedShoeSizeLabel.text = updatedWomensShoeSize
            womensConvertedShoeSizeLabel.hidden = false
        }
        
        womensShoeSizeTextField.resignFirstResponder()
    }
   
    
}


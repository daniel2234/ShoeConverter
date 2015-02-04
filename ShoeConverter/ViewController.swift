//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Daniel Kwiatkowski on 2015-02-03.
//  Copyright (c) 2015 Daniel Kwiatkowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        let sizeFromTextField = mensShoeSizeTextField.text // accessing the string value
        let numberFromTextField = sizeFromTextField.toInt()// convert string to optional
        var integerFromTextField = numberFromTextField! // unwrap optional
        let conversionConstant = 30 // conversion constant to 30
        integerFromTextField += conversionConstant //update the constant
        mensConvertedShoeSizeLabel.hidden = false // unhides the label
        let stringWithUpdatedShoeSize = "\(integerFromTextField)" //= string interpolation convert our integer into a string
        mensConvertedShoeSizeLabel.text = stringWithUpdatedShoeSize //update our label wiht shoe size
    }

}

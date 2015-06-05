//
//  ViewController.swift
//  Postcard
//
//  Created by William M. Detmar on 5/11/15.
//  Copyright (c) 2015 William M. Detmar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // We are referencing a:
    // IBOutlet - an element in the Storyboard
    // Weak - what kind of pointer
    // var - a variable
    // name - how we reference it in code
    // UILabel! - the "!"
    
    // Through the attribute inspector set lines to 0
    // this way it will auto detect more than one line
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // A function that runs when we press the button
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}


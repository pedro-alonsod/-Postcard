//
//  ViewController.swift
//  Postcard
//
//  Created by Pedro on 21.10.2014.
//  Copyright (c) 2014 Pedro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    var labelSwitch: Bool = false
    
    @IBOutlet weak var maiButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPress(sender: AnyObject) {
        
        if(labelSwitch == false) {
        messageLabel.hidden = false
        messageLabel.backgroundColor = UIColor.blueColor()
        messageLabel.textColor = UIColor.yellowColor()
        messageLabel.text = enterMessageTextField.text
        
        labelSwitch = true
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder() //remove keyboard
            
        maiButton.setTitle("Sent", forState: UIControlState.Normal)
            
        } else {
            messageLabel.hidden = true
            messageLabel.backgroundColor = UIColor.redColor()
            messageLabel.textColor = UIColor.yellowColor()
            messageLabel.text = enterMessageTextField.text
            
            maiButton.setTitle("New mail", forState: UIControlState.Normal)
            
            labelSwitch = false
            
        }
        
    }

}


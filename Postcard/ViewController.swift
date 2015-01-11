//
//  ViewController.swift
//  Postcard
//
//  Created by Leytzher on 1/11/15.
//  Copyright (c) 2015 Leytzher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Adding a comment to test commit in Git
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        
        nameLabel.hidden = false
        nameLabel.text = "Dear " + enterNameTextField.text + ","
        
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder() //hide keyboard
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()  //hide keyboard
        
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        mailButton.backgroundColor = UIColor.blueColor()
    
        
    }
}


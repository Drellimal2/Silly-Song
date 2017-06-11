//
//  ViewController.swift
//  Silly Song
//
//  Created by Dane Miller on 6/10/17.
//  Copyright © 2017 Dane Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var songTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(_ sender: Any) {
        nameTextField.text = ""
        songTextView.text = ""
    }

    @IBAction func displayLyrics(_ sender: Any) {
        if !(nameTextField.text?.isEmpty)!{
            songTextView.text = customizeTemplate(name: nameTextField.text!, template: bananaFanaTemplate)
        }
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}


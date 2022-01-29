//
//  ViewController.swift
//  MVVM_Lab
//
//  Created by Ahmed Fayeq on 28/01/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var errorlabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameTextFiekd: UITextField!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        errorlabel.isHidden = true
    }

    @IBAction func loginButton(_ sender: Any) {
        
    }
    
}


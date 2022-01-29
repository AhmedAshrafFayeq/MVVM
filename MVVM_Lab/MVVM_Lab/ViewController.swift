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
    
    var authenticationViewModel = AuthenticationVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        errorlabel.isHidden = true
    }

    @IBAction func loginButton(_ sender: Any) {
        errorlabel.isHidden = true
        guard let userName = userNameTextFiekd.text else {return}
        guard let password = passwordTextField.text else {return}
        
        authenticationViewModel.authenticateUserWith(userName, andPassword: password)
        authenticationViewModel.loginCompletionHandler {[weak self] status, messsage in
            guard let self = self else {return}
            if status{
                self.errorlabel.text = "Logged in with username == \(self.authenticationViewModel.userName) and email \(self.authenticationViewModel.email)"
                self.errorlabel.isHidden = false
            }else{
                self.errorlabel.text     = messsage
                self.errorlabel.isHidden = false
            }
        }
    }
    
}


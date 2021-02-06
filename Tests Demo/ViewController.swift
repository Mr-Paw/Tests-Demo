//
//  ViewController.swift
//  Tests Demo
//
//  Created by paw on 06.02.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func passwordOrEmailChanged(_ sender: Any) {
        let emailRight = Validater.validateEmail(emailTF.text!)
        let passwordRight = Validater.validatePassword(passwordTF.text!)
        let allRight = emailRight && passwordRight
        updateLoginButton(isEnabled: allRight)
        if !allRight {
            errorLabel.text! = ""
            errorLabel.text! += emailRight || emailTF.text! == "" ? "" : "Wrong email."
            errorLabel.text! += passwordRight || passwordTF.text! == "" ? "" : " Wrong password."
        }else{
            errorLabel.text = ""
        }
    }
    @IBAction func loginButtonAction(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
        updateLoginButton(isEnabled: false)
        errorLabel.text = ""
    }
    func updateLoginButton(isEnabled: Bool){
        loginButton.isEnabled = isEnabled
        UIView.animate(withDuration: 0.5) { [unowned self] in
            loginButton.alpha = isEnabled ? 1 : 0.6
        }
    }

}


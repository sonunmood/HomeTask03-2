//
//  SignUpViewController.swift
//  HomeTask032
//
//  Created by Sonun on 11/3/23.
//

import UIKit

class SignUpViewController: UIViewController {
    
    
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var uiView: UIView!
    @IBOutlet weak var fullNameTF: UITextField!
    @IBOutlet weak var mobilePhoneTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var confirmPasswordTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameTF.layer.borderWidth = 1
        mobilePhoneTF.layer.borderWidth = 1
        emailTF.layer.borderWidth = 1
        userNameTF.layer.borderWidth = 1
        passwordTF.layer.borderWidth = 1
        confirmPasswordTF.layer.borderWidth = 1
        fullNameTF.layer.borderColor = UIColor.white.cgColor
        mobilePhoneTF.layer.borderColor = UIColor.white.cgColor
        emailTF.layer.borderColor = UIColor.white.cgColor
        userNameTF.layer.borderColor = UIColor.white.cgColor
        passwordTF.layer.borderColor = UIColor.white.cgColor
        confirmPasswordTF.layer.borderColor = UIColor.white.cgColor
        
    }
    
    @IBAction func signInActions(_ sender: Any) {
        let goToFirstPage = storyboard?.instantiateViewController(identifier: "ViewController")
        navigationController?.pushViewController(goToFirstPage!, animated: true)
        
    }
    
    @IBAction func signUpAction(_ sender: Any) {
        if fullNameTF.text == "" || mobilePhoneTF.text == "" || emailTF.text == "" || userNameTF.text == "" || passwordTF.text == "" || confirmPasswordTF.text == "" {
            fullNameTF.layer.borderColor = UIColor.red.cgColor
            mobilePhoneTF.layer.borderColor = UIColor.red.cgColor
            emailTF.layer.borderColor = UIColor.red.cgColor
            userNameTF.layer.borderColor = UIColor.red.cgColor
            passwordTF.layer.borderColor = UIColor.red.cgColor
            confirmPasswordTF.layer.borderColor = UIColor.red.cgColor
            fullNameTF.placeholder = "Заполните пожалуйста"
            mobilePhoneTF.placeholder = "Заполните пожалуйста"
            emailTF.placeholder = "Заполните пожалуйста"
            userNameTF.placeholder = "Заполните пожалуйста"
            passwordTF.placeholder = "Заполните пожалуйста"
            confirmPasswordTF.placeholder = "Заполните пожалуйста"
        } else {
            let successPage = storyboard?.instantiateViewController(identifier: "SuccessViewController")
            navigationController?.pushViewController(successPage!, animated: true)
        }
        
    }
}

//
//  ViewController.swift
//  lesson033
//
//  Created by Sonun on 8/3/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var uiView: UIView!
    @IBOutlet weak var welcomeLbl: UILabel!
    @IBOutlet weak var signInLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var passwordLbl: UILabel!
    @IBOutlet weak var rememberLbl: UILabel!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var signUpLbl: UILabel!
    @IBOutlet weak var signInBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTF.layer.borderWidth = 1
        passwordTF.layer.borderWidth = 1
        emailTF.layer.borderColor = UIColor.white.cgColor
        passwordTF.layer.borderColor = UIColor.white.cgColor
        uiView.layer.cornerRadius = 24
        signInBtn.layer.cornerRadius = 12
        
    }
    
    @IBAction func passwordUpdateAction(_ sender: Any) {
        let passwordResetVC = storyboard?.instantiateViewController(identifier: "PasswordResetViewController")
        navigationController?.pushViewController(passwordResetVC!, animated: true)
        
    }
    
    @IBAction func signInAction(_ sender: Any) {
        if emailTF.text == "" || passwordTF.text == "" {
            emailTF.layer.borderColor = UIColor.red.cgColor
            emailTF.placeholder = "Заполните пожалуйста"
            passwordTF.layer.borderColor = UIColor.red.cgColor
            passwordTF.placeholder = "Заполните пожалуйста"
        } else {
            let successPage = storyboard?.instantiateViewController(identifier: "SuccessViewController")
            navigationController?.pushViewController(successPage!, animated: true)
        }
    }
    
    @IBAction func SignUpAction(_ sender: Any) {
        let signUpVC = storyboard?.instantiateViewController(identifier: "SignUpViewController")
        navigationController?.pushViewController(signUpVC!, animated: true)
    }
    
}


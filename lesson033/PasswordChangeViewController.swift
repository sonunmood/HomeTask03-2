//
//  PasswordChangeViewController.swift
//  HomeTask032
//
//  Created by Sonun on 13/3/23.
//

import UIKit

class PasswordChangeViewController: UIViewController {
    
    @IBOutlet weak var vectorIV: UIImageView!
    @IBOutlet weak var newPasswordTF: UITextField!
    @IBOutlet weak var newPassword2TF: UITextField!
    @IBOutlet weak var uiView: UIView!
    @IBOutlet weak var submitBtn: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        submitBtn.layer.cornerRadius = 12
        newPasswordTF.layer.borderColor = UIColor.white.cgColor
        newPassword2TF.layer.borderColor = UIColor.white.cgColor
        
        
    }
    
    @IBAction func submitAction(_ sender: Any) {
        if newPasswordTF.text == "" || newPassword2TF.text == "" {
            newPasswordTF.layer.borderWidth = 1
            newPassword2TF.layer.borderWidth = 1
            newPasswordTF.placeholder = "Заполните пожалуйста"
            newPassword2TF.placeholder = "Заполните пожалуйста"
            newPasswordTF.layer.borderColor = UIColor.red.cgColor
            newPassword2TF.layer.borderColor = UIColor.red.cgColor
        } else {
            if newPasswordTF.text == newPassword2TF.text {
                let successPage = storyboard?.instantiateViewController(identifier: "SuccessViewController")
                navigationController?.pushViewController(successPage!, animated: true)
            }
        }
    }
}

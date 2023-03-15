//
//  PasswordResetViewController.swift
//  HomeTask032
//
//  Created by Sonun on 12/3/23.
//

import UIKit

class PasswordResetViewController: UIViewController {
    
    @IBOutlet weak var vectorIV: UIImageView!
    
    
    
    @IBOutlet weak var getCodeTF: UITextField!
    @IBOutlet weak var employeeIdTF: UITextField!
    @IBOutlet weak var uiView: UIView!
    @IBOutlet weak var getOTPBtn: UIButton!
    @IBOutlet weak var submitBtn: UIButton!
    @IBOutlet weak var infoLbl: UILabel!
    @IBOutlet weak var x1Btn: UIButton!
    @IBOutlet weak var x2Btn: UIButton!
    @IBOutlet weak var x3Btn: UIButton!
    @IBOutlet weak var x4Btn: UIButton!
    @IBOutlet weak var x5Btn: UIButton!
    @IBOutlet weak var x6Btn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        employeeIdTF.layer.borderColor = UIColor.white.cgColor
        uiView.layer.cornerRadius = 22
        getOTPBtn.layer.cornerRadius = 12
        submitBtn.layer.cornerRadius = 12
        infoLbl.layer.borderWidth = 0.5
        infoLbl.layer.cornerRadius = 8
        x1Btn.layer.borderWidth = 0.5
        x1Btn.layer.cornerRadius = 8
        x2Btn.layer.borderWidth = 0.5
        x2Btn.layer.cornerRadius = 8
        x3Btn.layer.borderWidth = 0.5
        x3Btn.layer.cornerRadius = 8
        x4Btn.layer.borderWidth = 0.5
        x4Btn.layer.cornerRadius = 8
        x5Btn.layer.borderWidth = 0.5
        x5Btn.layer.cornerRadius = 8
        x6Btn.layer.borderWidth = 0.5
        x6Btn.layer.cornerRadius = 8
        getCodeTF.isEnabled = false
    }
    
    
    @IBAction func submitAction(_ sender: Any) {
        let changePassword = storyboard?.instantiateViewController(identifier: "PasswordChangeViewController")
        navigationController?.pushViewController(changePassword!, animated: true)
    }
    
    
    @IBAction func getOTPAction(_ sender: Any) {
        if employeeIdTF.text != nil {
            getCodeTF.isEnabled = true
        }
        
    }
}

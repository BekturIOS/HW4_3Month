//
//  SecondViewController.swift
//  HW4_3Month
//
//  Created by Бектур Каримов on 4/3/23.
//

import UIKit


class SecondViewController: UIViewController{
   
    @IBOutlet weak var countryTextField: UITextField!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var organizationTextfield: UITextField!
    
    @IBOutlet weak var emailTExtField: UITextField!
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBAction func submitButton(_ sender: Any) {
        let vc = ThirdViewController()
        navigationController?.pushViewController(vc, animated: true)

    }
        func isEmptyTextFeild(textField: UITextField) -> Bool{
        guard let text = textField.text else {return false}
        if text.isEmpty{
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "error"
            return false
        }
        
        
//        PhoneTf.addGestureRecognizer(UIGestureRecognizer(target: 
        return true
    }
    
}

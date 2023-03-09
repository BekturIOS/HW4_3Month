//
//  RegistrationViewController.swift
//  HW4_3Month
//
//  Created by Бектур Каримов on 7/3/23.
//

import UIKit



class RegistrationViewController: UIViewController{
    
    
    
    @IBOutlet weak var regionTextField: UITextField!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var organizationTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var phoneTextField: UITextField!

    @IBAction func submitButton(_ sender: Any) {
        if isEmptyTextFeild(textField: regionTextField) || isEmptyTextFeild(textField: lastNameTextField) || isEmptyTextFeild(textField: firstNameTextField) || isEmptyTextFeild(textField: organizationTextField) || isEmptyTextFeild(textField: emailTextField) || isEmptyTextFeild(textField: titleTextField) || isEmptyTextFeild(textField: phoneTextField){
            let tableViewVC = TableViewViewController()
           
            tableViewVC.email = emailTextField.text!
            tableViewVC.name = firstNameTextField.text!
            self.navigationController?.pushViewController(tableViewVC, animated: true)
        }else{
            let tableVC = TableViewViewController()
            let name = firstNameTextField?.text ?? "error"
            tableVC.name = name
        }
        
        
    }
    
    func isEmptyTextFeild(textField: UITextField) -> Bool{
        guard let text = textField.text else {return false}
        if text.isEmpty{
            let vc = TableViewViewController()
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "error"
            return false
            self.navigationController?.pushViewController(vc, animated: false)
        }
        
        return true
    }
    
    
    
    
}

//
//  ViewController.swift
//  HW4_3Month
//
//  Created by Бектур Каримов on 4/3/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var countrtyTextFil: UITextField!
    @IBOutlet private weak var EmailTextField: UITextField!
    @IBOutlet private weak var password: UITextField!

    
    @IBAction func signin(_ sender: Any) {
        if isEmptyTextFeild(textField: EmailTextField) || isEmptyTextFeild(textField: password) || isEmptyTextFeild(textField: countrtyTextFil) {
            let tableViewVC = TableViewViewController()
            tableViewVC.email = EmailTextField.text!
        
            self.navigationController?.pushViewController(tableViewVC, animated: true)
        }
//        let vc = TableViewViewController()
//        let email = EmailTextField?.text ?? "Empty"
//        vc.email = email
//        vc.storyboard?.instantiateViewController(withIdentifier: TableViewViewController.id)
//        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func forgotPasssword(_ sender: Any) {
        
        
    }
    
    
    @IBAction func createAcoount(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func isEmptyTextFeild(textField: UITextField) -> Bool{
        guard let text = textField.text else {return false}
        if text.isEmpty{
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
            textField.placeholder = "error"
            return false
        }
        
        return true
    }
    
}


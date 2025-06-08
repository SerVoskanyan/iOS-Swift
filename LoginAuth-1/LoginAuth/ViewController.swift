//
//  ViewController.swift
//  LoginAuth
//
//  Created by Серик Восканян on 29.05.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func loginButton(_ sender: UIButton) {
        if userNameTextField.text == "Serik" && passwordTextField.text == "12345" {
            view.backgroundColor = .green
        } else {
            alertCheck()
        }
    }
    
    func alertCheck() {
        let alert = UIAlertController(title: "Ошибка", message: "Неверный логин/пароль", preferredStyle: .alert)
        let action1 = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action1)
        self.present(alert, animated: true)
    }
    
    
}


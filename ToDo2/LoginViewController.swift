//
//  LoginViewController.swift
//  ToDo2
//
//  Created by Matthew Falzon on 28/04/2015.
//  Copyright (c) 2015 Matthew Falzon. All rights reserved.
//

import Foundation

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        
        styleLoginButton()
        
    }
    
    func styleLoginButton() {
        
        loginButton.layer.cornerRadius = 10.0
        loginButton.layer.masksToBounds = true
        loginButton.layer.borderWidth = 1.0
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        switch(textField) {
            case emailTextField:
            emailTextField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
            
        case passwordTextField:
            passwordTextField.resignFirstResponder()
            // Login
            
        default:
            break
            
        }
        
        return true
    }
    
    
    @IBAction func onLoginButtonTapped(sender: AnyObject) {
        doLogin()
    }
    
    func doLogin() {
        println("hello")
    }
    
}

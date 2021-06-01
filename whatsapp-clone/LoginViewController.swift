//
//  ViewController.swift
//  whatsapp-clone
//
//  Created by Rose Neezar on 16/05/2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var emailLabelOutlet: UILabel!
    @IBOutlet weak var passwordLabelOutlet: UILabel!
    @IBOutlet weak var repeatPasswordLabel: UILabel!
    
    @IBOutlet weak var signUpLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    @IBOutlet weak var loginButtonOutlet: UIButton!
    @IBOutlet weak var signUpButtonOutlet: UIButton!
    @IBOutlet weak var resendEmailButtonOutlet: UIButton!
    
    @IBOutlet weak var repeatPasswordLineView: UIView!
    
    //MARK: - Viee Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      setupTextFieldDelegate()
    }

    //MARK: - IBActions
    @IBAction func forgotPasswordButtonPressed(_ sender: Any) {
        
    }
    @IBAction func loginButtonPressed(_ sender: Any) {
        
    }
    @IBAction func resendEmailButtonPressed(_ sender: Any) {
        
    }
    @IBAction func signUpButtonPressed(_ sender: Any) {
        
    }
    
    //MARK: - Setup
    private func setupTextFieldDelegate() {
        emailTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        repeatPasswordTextField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        updatePlaceholderLabels(textField: textField)
    }
    
    //MARK: - Animations
    private func updatePlaceholderLabels(textField: UITextField){
        switch textField {
        case emailTextField:
            emailLabelOutlet.text = textField.hasText ? "Email" : ""
        case passwordTextField:
            passwordLabelOutlet.text = textField.hasText ? "Password" : ""
        default:
            repeatPasswordLabel.text = textField.hasText ? "Confirm Password" : ""
        }
    }

}


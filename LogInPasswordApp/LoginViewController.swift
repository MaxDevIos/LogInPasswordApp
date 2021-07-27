//
//  ViewController.swift
//  LogInPasswordApp
//
//  Created by Maxim Kucherov on 27.07.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
//MARK: - IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
//MARK: - Private Properties
    private let user = "User"
    private let password = "Password"
    
//MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let user = segue.destination as? WelcomeViewController
        user?.userName = self.user
    }

//MARK: - IB Actions
    @IBAction private func unwind(segue: UIStoryboardSegue) {
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
    
    @IBAction private func forgotUserName() {
        showAlert(with: "Oops!", and:  "Your name is User! 😉")
    }
    
    @IBAction private func forgotPassword() {
        showAlert(with: "Oops!", and:  "Your password is Password! 😉")
    }
    
    @IBAction func logInButtonPressed() {
        if userNameTextField.text != user || passwordTextField.text != password {
            showAlert(with: "Invalid login or password", and: "Please, enter correct login and password", textField: passwordTextField)
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
}

//MARK: - Extensions
extension LoginViewController {
    private func showAlert(with title: String, and message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAlert)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInButtonPressed()
        }
        return true
    }
}

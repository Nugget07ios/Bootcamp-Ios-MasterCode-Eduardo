//
//  RegisterViewController.swift
//  DEsafioTextField
//
//  Created by Eduardo on 25/02/26.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var screen: RegisterScreen = RegisterScreen()
    
    override func loadView() {
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen.delegate = self
        screen.nameTextField.delegate = self
        screen.emailTextField.delegate = self
        screen.passwordTextField.delegate = self
        screen.repeatPasswordTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    private func isValidEmail(_ email: String) -> Bool {
        if email.isEmpty { return false }
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let predicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        return predicate.evaluate(with: email)
    }
    private func isValidPassword(_ password: String) -> Bool {
        if password.isEmpty { return false }
        let passwordRegex = ".{8,}"
        let predicate = NSPredicate(format:"SELF MATCHES %@", passwordRegex)
        return predicate.evaluate(with: password)
    }
    
//Erro de estado inconsistente da UI que fica fica baseada em estados antigos. Bug muito comum em formulários.
    
//    private func validatEmail(_ textField: UITextField) {
//        if textField == screen.emailTextField {
//            if let email = textField.text, isValidEmail(email){
//                screen.passwordTextField.isEnabled = true
//                screen.passwordTextField.backgroundColor = .white
//            } else{
//                screen.passwordTextField.isEnabled = false  
//                screen.passwordTextField.backgroundColor = .opaqueSeparator
//            }
//        }
//    }
//    
//   
//    private func validatePassword(_ textField: UITextField,_ texField2: UITextField) {
//        if textField == screen.passwordTextField {
//            if let password = textField.text, isValidPassword(password){
//                screen.repeatPasswordTextField.isEnabled = true
//                screen.repeatPasswordTextField.backgroundColor = .white
//            } else{
//                screen.repeatPasswordTextField.isEnabled = false
//                screen.repeatPasswordTextField.backgroundColor = .opaqueSeparator
//                screen.registerButton.isEnabled = false
//                screen.registerButton.backgroundColor = .opaqueSeparator
//                }
//        }
//    }
//    
//    private func validateRepeatPassord(_ textField: UITextField,_ texField2: UITextField){
//        if textField == screen.repeatPasswordTextField && texField2 == screen.passwordTextField {
//            if texField2.text == textField.text {
//                screen.registerButton.isEnabled = true
//                screen.registerButton.backgroundColor = .blue
//            }else{
//                screen.registerButton.isEnabled = false
//                screen.registerButton.backgroundColor = .opaqueSeparator
//            }
//        }
//    }
    
    private func updateTextfield(){
        let emailValid  = screen.emailTextField.text ?? ""
        let passwordValid = screen.passwordTextField.text ?? ""
        let repeatPasswordValid = screen.repeatPasswordTextField.text ?? ""
        
        let validEmail = isValidEmail(emailValid)
        let validPassword = isValidPassword(passwordValid)
        let validRepeat = passwordValid == repeatPasswordValid && !repeatPasswordValid.isEmpty
        
        screen.passwordTextField.isEnabled = validEmail
        screen.passwordTextField.backgroundColor = validEmail ? .white : .opaqueSeparator
        
        screen.repeatPasswordTextField.isEnabled = validEmail && validPassword
        screen.repeatPasswordTextField.backgroundColor = validPassword ? .white : .opaqueSeparator
        
        screen.registerButton.backgroundColor = validEmail && validPassword && validRepeat ? .blue : .opaqueSeparator
        screen.registerButton.isEnabled = validEmail && validPassword && validRepeat ? true : false
    }
}

extension RegisterViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        updateTextfield()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let currentText = textField.text ?? ""
        guard let stringRange = Range(range, in: currentText) else { return true }
        let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
        let oldText = textField.text
        textField.text = updatedText
        
//        switch textField {
//        
//        case screen.emailTextField:
//            validatEmail(screen.emailTextField)
//            
//        case screen.passwordTextField:
//            validatePassword(screen.passwordTextField, screen.repeatPasswordTextField)
//            
//        case screen.repeatPasswordTextField:
//            validateRepeatPassord(screen.repeatPasswordTextField, screen.passwordTextField)
//            
//        default:
//            break
//        }
        updateTextfield()
        
        textField.text = oldText
        return true
    }
}

extension RegisterViewController: RegisterScreenDelegate {
    func didTapRegisterButton() {
        print("Logado")
    }
}

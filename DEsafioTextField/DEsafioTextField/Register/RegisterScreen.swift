//
//  RegisterScreen.swift
//  DEsafioTextField
//
//  Created by Eduardo on 25/02/26.
//

import UIKit

protocol RegisterScreenDelegate: AnyObject {
    func didTapRegisterButton()
}

class RegisterScreen: UIView {
    
    weak var delegate: RegisterScreenDelegate?

    lazy var titleRegisterLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Cadastro"
        label.font = UIFont.preferredFont(forTextStyle: .title1)
        label.textColor = UIColor.black
        return label
    }()
    
    lazy var registerImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage.profile
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 50
        image.clipsToBounds = true
        return image
    }()
    
    lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.attributedPlaceholder = NSAttributedString(string: "Nome", attributes: [.foregroundColor: UIColor.systemGray])
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.autocorrectionType = .no
        textField.textColor = .black
        return textField
    }()
      
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.attributedPlaceholder = NSAttributedString(string: "E-mail", attributes: [.foregroundColor: UIColor.systemGray])
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.autocorrectionType = .no
        textField.textColor = .darkGray
        textField.text?.lowercased()
        textField.isEnabled = true
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.attributedPlaceholder = NSAttributedString(string: "Digite a senha", attributes: [.foregroundColor: UIColor.systemGray])
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.autocorrectionType = .no
        textField.textColor = .darkGray
        textField.isSecureTextEntry = false
        textField.backgroundColor = .opaqueSeparator
        textField.isEnabled = false
        return textField
    }()
    
    lazy var repeatPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.attributedPlaceholder = NSAttributedString(string: "Repita a senha", attributes: [.foregroundColor: UIColor.systemGray])
        textField.borderStyle = .roundedRect
        textField.keyboardType = .default
        textField.autocorrectionType = .no
        textField.textColor = .darkGray
        textField.isSecureTextEntry = false
        textField.backgroundColor = .opaqueSeparator
        textField.isEnabled = false
        return textField
    }()
    
    lazy var registerButton: UIButton = {
        let button =  UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Finalizar Cadastro", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.backgroundColor = UIColor.opaqueSeparator
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.isEnabled = false
        button.addTarget(self, action: #selector(didTapedLogin), for:.touchUpInside)
        return button
    }()
    
    @objc func didTapedLogin(){
        delegate?.didTapRegisterButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements(){
        addSubview(titleRegisterLabel)
        addSubview(registerImage)
        addSubview(nameTextField)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(repeatPasswordTextField)
        addSubview(registerButton)
    }
    
    func configConstraints(){
        NSLayoutConstraint.activate([
            
            titleRegisterLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor , constant: 20),
            titleRegisterLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            registerImage.topAnchor.constraint(equalTo: titleRegisterLabel.bottomAnchor, constant: 10),
            registerImage.widthAnchor.constraint(equalToConstant: 200),
            registerImage.heightAnchor.constraint(equalToConstant: 200),
            registerImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            nameTextField.topAnchor.constraint(equalTo: registerImage.bottomAnchor, constant: 20),
            nameTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            nameTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            
         
            emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 5),
            emailTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            emailTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 5),
            passwordTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            passwordTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            
            repeatPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 5),
            repeatPasswordTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            repeatPasswordTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
    
            registerButton.heightAnchor.constraint(equalToConstant: 40),
            registerButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            registerButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            registerButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
}

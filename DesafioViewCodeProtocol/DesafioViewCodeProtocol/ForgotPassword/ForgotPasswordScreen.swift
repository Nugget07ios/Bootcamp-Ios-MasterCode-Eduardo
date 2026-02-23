//
//  ForgotPasswordScreen.swift
//  DesafioViewCodeProtocol
//
//  Created by Eduardo on 23/02/26.
//

import UIKit

protocol ForgotPasswordScreenDelegate: AnyObject {
    func didTapedReturnLoginButton()
}

class ForgotPasswordScreen: UIView {
    
    weak var delegate: ForgotPasswordScreenDelegate?
    
    lazy var backButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(systemName: "chevron.left")
        button.setImage(image, for: .normal)
        button.tintColor = .black
        button.addTarget(self, action: #selector(didTapReturnToLoginButton), for: .touchUpInside)
        return button
    }()
    
    lazy var FGImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Forgot")
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 20
        return image
    }()
    
    lazy var FGLabel: UILabel = { 
        let label = UILabel()
        label.text = "Forgot Password"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.tintColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var FGTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Please enter your email oddress to reset your possword "
        label.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        label.tintColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Email  "
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.autocorrectionType = .no
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var FGButton: UIButton = {
        let button =  UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Send Password", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.backgroundColor = UIColor.travelingBlue
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        return button
    }()

    lazy var FGText2Label: UILabel = {
        let label = UILabel()
        label.text = "Don't remember your email? Contact us at help@edu.com "
        label.font = UIFont.systemFont(ofSize: 10, weight: .regular)
        label.tintColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    @objc func didTapReturnToLoginButton(){
        delegate?.didTapedReturnLoginButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        addConstraints()
        backgroundColor = .white
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements(){
        addSubview(backButton)
        addSubview(FGLabel)
        addSubview(emailTextField)
        addSubview(FGTextLabel)
        addSubview(FGImage)
        addSubview(FGButton)
        addSubview(FGText2Label)
    }
    
    func addConstraints(){
        NSLayoutConstraint.activate([
        
            backButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            FGImage.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 20),
            FGImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            FGImage.heightAnchor.constraint(equalToConstant: 300),
            FGImage.widthAnchor.constraint(equalToConstant: 300),
            
            FGLabel.topAnchor.constraint(equalTo: FGImage.bottomAnchor, constant: 20),
            FGLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            FGTextLabel.topAnchor.constraint(equalTo: FGLabel.bottomAnchor, constant: 20),
            FGTextLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: FGTextLabel.bottomAnchor, constant: 30),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            FGButton.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 50),
            FGButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            FGButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            FGText2Label.centerXAnchor.constraint(equalTo: centerXAnchor),
            FGText2Label.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20)
        
        ])
    }
    
}

//
//  ViewController.swift
//  DesafioViewCodeProtocol
//
//  Created by Eduardo on 22/02/26.
//

import UIKit

class LoginViewController: UIViewController {
    
    private var screen: LoginScreen? // criando um ojeto do tip loginScreen
    
    override func loadView() {
        self.screen = LoginScreen()
        view = screen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        screen?.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
}

extension LoginViewController: LoginScreenDelegate {
    
    func didTapLogin() {
        navigationController?.pushViewController(HomeViewController(), animated: true)
    }
    
    func didTapedForgotPasswordButton() {
        navigationController?.pushViewController(ForgotPasswordViewController(), animated: true)
    }
    
    
}


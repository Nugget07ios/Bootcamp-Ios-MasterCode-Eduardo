//
//  ForgotPasswordViewController.swift
//  DesafioViewCodeProtocol
//
//  Created by Eduardo on 23/02/26.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    private var screen: ForgotPasswordScreen = ForgotPasswordScreen()
    
    override func loadView() {
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screen.delegate = self
    }
}

extension ForgotPasswordViewController: ForgotPasswordScreenDelegate {
    func didTapedReturnLoginButton() {
        navigationController?.popToRootViewController(animated: true)
    }
}

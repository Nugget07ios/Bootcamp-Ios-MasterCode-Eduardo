//
//  HomeViewController.swift
//  DesafioViewCodeProtocol
//
//  Created by Eduardo on 23/02/26.
//

import UIKit

class HomeViewController: UIViewController {

    override func loadView() {
        view = screen
    }
    
    var screen: HomeScreen = HomeScreen()
    override func viewDidLoad() {
        super.viewDidLoad()
        screen.delegate = self
    }
}

extension HomeViewController: HomeScreenDelegate {
    func tapedReturnButton() {
        navigationController?.popToRootViewController(animated: true)
        
    }
}

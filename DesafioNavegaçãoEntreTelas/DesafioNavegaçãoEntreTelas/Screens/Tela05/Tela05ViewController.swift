//
//  Tela05ViewController.swift
//  DesafioNavegaçãoEntreTelas
//
//  Created by Eduardo on 09/02/26.
//

import UIKit

class Tela05ViewController: UIViewController {

    @IBOutlet weak var tela01Button: UIButton!
    @IBOutlet weak var tela04Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigation()
    }
    
    @IBAction func tappedTela01Button(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func tappedTela04Button(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
    }
    
    func configElements(){
        view.backgroundColor = .systemPurple
        tela01Button.ConfigButton(title: "TELA 01", backgroundColor: UIColor.white, titleColor: UIColor.lightGray, cornerRadius: 10)
        tela04Button.ConfigButton(title: "TELA 04", backgroundColor: UIColor.lightGray, titleColor: UIColor.white, cornerRadius: 10)
    }
    
    func setupNavigation(){
        navigationItem.title = "TELA 05"
        navigationItem.hidesBackButton = true
    }
    
}

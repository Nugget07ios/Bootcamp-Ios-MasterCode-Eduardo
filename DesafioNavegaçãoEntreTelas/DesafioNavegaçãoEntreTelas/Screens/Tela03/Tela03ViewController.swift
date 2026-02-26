//
//  Tela03ViewController.swift
//  DesafioNavegaçãoEntreTelas
//
//  Created by Eduardo on 09/02/26.
//

import UIKit

class Tela03ViewController: UIViewController {

    @IBOutlet weak var tela04Button: UIButton!
    @IBOutlet weak var tela02Button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElementes()
        setupNavigation()
    }
    
    @IBAction func tappedTela04Button(_ sender: Any) {
        let tela04 = UIStoryboard(name: String(describing: Tela04ViewController.self), bundle: nil).instantiateViewController(withIdentifier: "Tela04ViewController")
        navigationController?.pushViewController(tela04, animated: true)
    }
    
    @IBAction func tappedTela02Button(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    func configElementes(){
        view.backgroundColor = .gray
        tela02Button.ConfigButton(title: "TELA 02", backgroundColor: UIColor.cyan, titleColor: UIColor.blue, cornerRadius: 10)
        tela04Button.ConfigButton(title: "TELA 04", backgroundColor: UIColor.blue, titleColor: UIColor.cyan, cornerRadius: 10)
    }
    
    func setupNavigation(){
        navigationItem.title = "TELA 03"
        navigationItem.hidesBackButton = true
    }
}

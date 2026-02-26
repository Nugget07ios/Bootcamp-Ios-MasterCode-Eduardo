//
//  Tela04ViewController.swift
//  DesafioNavegaçãoEntreTelas
//
//  Created by Eduardo on 09/02/26.
//

import UIKit

class Tela04ViewController: UIViewController {
    @IBOutlet weak var tela05Button: UIButton!
    @IBOutlet weak var tela04Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElementos()
        setupNavigation()
    }
  
    @IBAction func tappedTela05Button(_ sender: Any) {
        let tela05 = UIStoryboard(name: String(describing: Tela05ViewController.self), bundle: nil).instantiateViewController(withIdentifier: "Tela05ViewController")
        navigationController?.pushViewController(tela05, animated: true)
    }
    
    @IBAction func tappedTela04Button(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    func configElementos(){
        view.backgroundColor = .darkGray
        tela05Button.ConfigButton(title: "TELA 05", backgroundColor: UIColor.black, titleColor: UIColor.white, cornerRadius: 10)
        tela04Button.ConfigButton(title: "TELA 03", backgroundColor: UIColor.white, titleColor: UIColor.black, cornerRadius: 10)
    }
    
    func setupNavigation(){
        navigationItem.title = "TELA 04"
        navigationItem.hidesBackButton = true
    }
    
}

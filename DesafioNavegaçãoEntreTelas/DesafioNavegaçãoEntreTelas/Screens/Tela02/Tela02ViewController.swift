//
//  Tela02ViewController.swift
//  DesafioNavegaçãoEntreTelas
//
//  Created by Eduardo on 09/02/26.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet weak var tela03Button: UIButton!
    @IBOutlet weak var tela01Button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confElements()
        setupNavigation()
    }
    
    @IBAction func teppedTela03Button(_ sender: Any) {
        let tela03 = UIStoryboard(name: String(describing: Tela03ViewController.self), bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController")
        navigationController?.pushViewController(tela03, animated: true)
    }
    
    @IBAction func tappedTela01Button(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    func confElements(){
        tela01Button.ConfigButton(title: "TELA 01", backgroundColor: UIColor.black, titleColor: UIColor.red, cornerRadius: 10)
        tela03Button.ConfigButton(title: "TELA 03", backgroundColor: UIColor.red, titleColor: UIColor.black, cornerRadius: 10)
    }
    
    func setupNavigation(){
        navigationItem.title = "TELA 02"
        navigationItem.hidesBackButton = true
    }
}

//
//  ViewController.swift
//  DesafioNavegaçãoEntreTelas
//
//  Created by Eduardo on 09/02/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tela02Button: UIButton!
    
    override func loadView() {
        super.loadView()
        print(#function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
        print(#function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavigation()
        print(#function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#function)
    
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#function)
    }
    
    
    @IBAction func tappedTela02Button(_ sender: Any) {
        let tela02 = UIStoryboard(name: String(describing: Tela02ViewController.self), bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController")
        navigationController?.pushViewController(tela02, animated: true)
    }
    
    func configElements(){
        view.backgroundColor = .green
        tela02Button.backgroundColor = .systemBlue
        tela02Button.layer.cornerRadius = 10
        tela02Button.setTitle("TELA 02", for: .normal)
        tela02Button.setTitleColor(UIColor.white, for: .normal)
    }
    
    func setupNavigation(){
        navigationItem.title = "TELA 01"
        navigationItem.hidesBackButton = true
    }
}

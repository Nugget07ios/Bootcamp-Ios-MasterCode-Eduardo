//
//  ViewController.swift
//  EstudoPrimeiroViewCode
//
//  Created by Eduardo on 20/02/26.
//

import UIKit

//CLASSE - LoginViewController é o controlador que gerencia o comportamento e as interações dessa tela."

final class LoginViewController: UIViewController { // FINAL - Impede herança desnecessária → melhora performance e deixa intenção clara.
    
    private var screen: LoginScreen? = LoginScreen() // Dei via a minha classe que contem a minha view// PRIVATE - A view pertence apenas à controller. Encapsulamento bem aplicado.
    
    override func loadView() {//loadView() é responsável pela criação da view
//        Estou sobrescrevendo loadView() para substituir a view padrão da UIViewController por uma view customizada (LoginScreen).
//        Dessa forma assumo o controle manual da criação da interface, eliminando dependência de Storyboard
        
          view = screen // Substituindo a view padrão da UIViewController pela sua UIView customizada (LoginScreen).
        
//        Se NÃO sobrescrever loadView():
//        O sistema cria automaticamente uma UIView vazia
//        Ou carrega do Storyboard (se existir)
            }
    
    override func viewDidLoad() {
       //viewDidLoad() é chamado depois que a view já foi carregada na memória
        //renderiza nossa tela
        super.viewDidLoad()
        screen?.delegate = self //assinatura de contrato
    }
}

extension LoginViewController: LoginScreenDelegate{ //conformidade com metodos dos contrato. 
    func didTapLoginButton() {
        if (screen?.emailTextField.backgroundColor == .red) {
            screen?.emailTextField.backgroundColor = .green
        } else {
            screen?.emailTextField.backgroundColor = .red
        }
  
    }
    
    
}

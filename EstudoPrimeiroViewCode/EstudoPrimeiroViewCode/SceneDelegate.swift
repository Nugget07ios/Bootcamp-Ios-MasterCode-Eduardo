//
//  SceneDelegate.swift
//  EstudoPrimeiroViewCode
//
//  Created by Eduardo on 20/02/26.
//

import UIKit
//SCENEDELEGATE -> Responsável pelo ciclo de vida da tela, do layout da aplicacão.


//O SceneDelegate é responsável pelo ciclo de vida da interface em apps com múltiplas cenas.
//No método willConnectTo, criamos manualmente a UIWindow, associamos à UIWindowScene e definimos o rootViewController, garantindo controle total da hierarquia da interface em projetos sem storyboard (ViewCode).

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
//Esse codigo configura a interface principal do aplicativo. Qunado o aplicativo e inciaido ele cria uma janela (UiWindow), define uma UINavigationController com o controlador da view inicial(com uma viecontroller como sua primeira tela, tela root), e faz com a janela seja exibida.

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
            guard let windowScene = (scene as? UIWindowScene) else { return }// o as? tenta converter de forma sgura  a cena recebida com um objeto de UiWindowScene.
        // Guarde let garante que a conversacao seja bem sucedida, caso contrario retorna e nao executa.
        let window = UIWindow(windowScene: windowScene) //Criamos a janela principal do app.
        
        //Define quem é a tela rooot (RAIZ)
        window.rootViewController = LoginViewController() // so trocar a classe segue o padrão
        window.makeKeyAndVisible() //Torna essa janela a principal do app. - Sem essa linha, o app abre, mas nada aparece.

        self.window = window //Armazena a janela criada na propriedade do SceneDelegate.Isso mantém a janela viva na memória.Se não fizer isso, a janela pode ser desalocada.
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}


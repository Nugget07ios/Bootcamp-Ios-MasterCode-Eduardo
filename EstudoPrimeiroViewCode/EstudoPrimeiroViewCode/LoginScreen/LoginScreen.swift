//
//  LoginScreen.swift
//  EstudoPrimeiroViewCode
//
//  Created by Eduardo on 22/02/26.
//
import UIKit
//1 - Criar a screen(Ex. LoginScreen e LoginViewcontroller)
//2 - Chamar o construtor
//init frame
//3 - Criar elementos (Chamar TAMIC - para que as constraints seja carregadas, se nao inserir ele ignora a constraints setadas a mão)
//4 - Adicionar a view  - addSubView().        addElementes -> addSubView()

    //private func addElementos() {
    //    addSubview(loginLabel)

//(Não esquecer de chamar a função).
//5 - Configurar as constraints
//6 - chamar no loadView

                            //AnybOjetct (pode ser assinado por um objeto)  - por que a referencia tem que ser week. Porque a View mantém uma referência ao delegate,e o delegate  a ViewController que já mantém a View.
protocol LoginScreenDelegate: AnyObject {
    func didTapLoginButton()//so referencia os metodos que tem que ser executado.
//um protocol (ou protocolo) é como um "contrato de comunicacao" que define um conjunto de métodos ou propriedades que uma classe ou estruturas deve implementar.Qualquer objeto que adote esse protocolo se compromete a implementar os métodos declarados nele (em conformidade), permitindo comunicação desacoplada entre componentes.
    
   //basicamente: A View avise que algo aconteceu e a ViewController decida o que fazer.
}

//CLASSE - A LoginScreen é a minha classe de view, ou seja, é a parte da interface onde eu configuro e organizo todos os elementos visuais que o usuário vai interagir. Em outras palavras, é a classe que define a estrutura e a aparência da tela.

class LoginScreen: UIView {
//    Estou utilizando uma propriedade lazy com closure para inicializar e configurar a UILabel de forma encapsulada e organizada.
//    O uso do lazy garante que a instância só será criada quando for acessada pela primeira vez, evitando criação desnecessária e permitindo, se preciso, o uso seguro do self dentro da closure — algo útil quando precisamos configurar actions, delegates ou callbacks.
//    Dentro da closure eu crio a UILabel(dou vida), realizo sua configuração inicial — como a propriedades de texto, COR, FONTE e outros — e retorno a instância já pronta para uso. Esse padrão ajuda a manter a ViewController mais limpa, evitando concentrar toda a configuração visual no viewDidLoad.
//    Além disso, defino translatesAutoresizingMaskIntoConstraints = false porque estou utilizando Auto Layout via código. Ao fazer isso, desativo a conversão automática do autoresizing mask em constraints, evitando conflitos e garantindo que o layout seja totalmente controlado pelas constraints que eu definir manualmente.
//    Esse padrão é bastante utilizado em ViewCode porque melhora a legibilidade, organização e manutenção do código, além de seguir boas práticas de separação de responsabilidades dentro da camada de UI.
    
    weak var delegate: LoginScreenDelegate? //Estou declarando uma propriedade chamada delegate que pode receber qualquer objeto que implemente o protocolo LoginScreenDelegate.
    
  


//   CLAUSURE é um bloco de código que pode ser armazenado em uma variável ou passado como parâmetro. NESTE CONTEXTO ESTOU UTILIZANDO PARA: Criar, Configurar e Retornar. pode gerar Retain cycle. Ciclo de retencao.
    lazy var loginLabel: UILabel = { //lazy "Preguiçoso" - se não chama ele nao entra.
        let label = UILabel()//ganha vida
        label.text = "LOGIN" //configuracao
        label.font = UIFont.systemFont(ofSize: 10)
        label.tintColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }() /*Os parênteses ao final da closure fazem com que ela seja executada imediatamente, retornando o objeto configurado. Sem eles, estaríamos apenas atribuindo uma closure à propriedade, e não o resultado da execução dela.*/
    
    lazy var loginImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "person.circle.fill")
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 20
        return image
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Digite seu e-mail:"
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.autocorrectionType = .no
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Digite sua senha:"
        textField.borderStyle = .roundedRect
        textField.keyboardType = .emailAddress
        textField.autocorrectionType = .no
        textField.textColor = .darkGray
        textField.isSecureTextEntry = true
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button =  UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.backgroundColor = UIColor.black
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(didTapedRegisterButton), for: .touchUpInside)
        //self- quem e o responsavel por assumir o botao
        //Selector implmenta uma funcao que necessita de objetcC.
        //FOR - momento da acao do botao. se e qunado solta, quando clica, quando clica  segura e solta.
        button.addTarget(self, action: #selector(didTapedRegisterButton2), for: .touchDown)
        return button
    }()
    
    @objc func didTapedRegisterButton(){
        delegate?.didTapLoginButton()
    }
    
    @objc func didTapedRegisterButton2(){
        print("2")
    }
    

    override init(frame: CGRect) { // sbrescrevendo o construtor da classe pai. propriedade que define nossa frame (altura e largura). CGrect uma forma de repesetntar X e Y.
        super.init(frame: frame) // acesse uma propriedade da classe pai que ja esta sendo implementada (frame).
        backgroundColor = .cyan
        addElementos()
        configContraints()
    }
    //Mesmo utilizando init(frame:), somos obrigados a implementar required init?(coder:) porque a classe UIView declara esse inicializador como required. Isso faz parte do contrato de herança da classe. O init(coder:) é utilizado quando a view é instanciada via Storyboard ou XIB, através de desserialização. Em projetos 100% ViewCode, implementamos esse init apenas para cumprir o contrato da superclasse, geralmente usando fatalError para evitar uso indevido.
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented") //storyboar e Xib.
        // Required init  ->  é um modificador qeu obriga as subclasses a implementar aquele inicializador. Usado quando queremos garantir as inconsistencia na cadeia de herança. UIViewController exige esse inicializador para suportar o Storyboard.
    }
    
    private func addElementos() {
        addSubview(loginLabel)
        addSubview(loginImage)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        
    }
    
    private func configContraints() {
        NSLayoutConstraint.activate([
            
            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            loginImage.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 20),
            loginImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginImage.heightAnchor.constraint(equalToConstant: 100),
            loginImage.widthAnchor.constraint(equalToConstant: 100),
            
            emailTextField.topAnchor.constraint(equalTo: loginImage.bottomAnchor, constant: 50),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
     
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 100),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
            
        ])
    }
    
}

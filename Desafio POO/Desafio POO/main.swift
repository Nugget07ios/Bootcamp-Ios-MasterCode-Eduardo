//
//  main.swift
//  Desafio POO
//
//  Created by Eduardo on 28/01/26.
//

import Foundation


//Desafio 1 – Sistema de Pagamento
//📌 Descrição
//Você está criando um sistema que processa diferentes formas de pagamento.
//Cada tipo de pagamento calcula a taxa de forma diferente.
// O que precisa ser feito
//Crie uma classe base chamada Pagamento
//Essa classe deve ter um método calcularValorFinal(valor: Double) -> Double
//Crie duas subclasses:
//CartaoCredito
//Pix
//Cada forma de pagamento deve calcular a taxa de forma diferente:
//Cartão de crédito: taxa de 5%
//Pix: sem taxa
//Crie um array do tipo [Pagamento]
//Percorra esse array e imprima o valor final de cada pagamento

// Regras
//Use override
//Não use if ou switch para decidir o tipo de pagamento



class Pagamento{
    func calcularValorFinal(valor: Double) -> Double {
        return 0
    }
}

class CartaoCredito: Pagamento{
    override func calcularValorFinal(valor: Double) -> Double {
        let valorFinal = valor + (valor * 0.05)
        return valorFinal
    }
}

class Pix: Pagamento{
    override func calcularValorFinal(valor: Double) -> Double {
        return valor
    }
}
    
    let pagamentos: [Pagamento] = [
        CartaoCredito(),
        Pix(),
        CartaoCredito(),
        Pix()
    ]

    let valores: [Double] = [10.1, 20.2, 30.3, 40.4]

    for i in 0..<pagamentos.count {
        let pagamento = pagamentos[i]
        let valor = valores[i]
        
        let valorFinal = pagamento.calcularValorFinal(valor: valor)
        print("Valor final: \(valorFinal)")
    }
    


//Desafio 2 – Notificações do App
// Descrição
//Um app envia notificações por diferentes canais.
//Cada canal envia a mensagem de uma forma diferente.
// O que precisa ser feito
//Crie uma classe base Notificacao
//Crie o método enviar(mensagem: String)
//Crie pelo menos duas subclasses:
//Email
//SMS
//Cada classe deve sobrescrever o método enviar
//Armazene as notificações em um array [Notificacao]
//Envie a mesma mensagem para todas

// Regras
//O código que envia a mensagem não pode saber qual é o tipo da notificação

    
    let notificacao:[String] = ["Boa noite", "Bom dia", "Boa tarde"]
    
    class BaseNotificacao{
        func enviarMenssagem(menssagem: String){
            print(menssagem)
        }
    }

    class Email: BaseNotificacao{
        override func enviarMenssagem(menssagem: String) {
            print("\(menssagem), usuário do computador")
        }
    }
    class SMS: BaseNotificacao{
        override func enviarMenssagem(menssagem: String) {
            print("\(menssagem),usuário do smartphone")
        }
}

let email: Email = Email()
let sms: SMS = SMS()

let notificacoes:[BaseNotificacao] = [email, sms]

for menssagens in notificacao {
    for notificacaos in notificacoes {
        notificacaos.enviarMenssagem(menssagem: menssagens)
    }
}

//Desafio 3 – Cofre Digital

// Descrição
//Você precisa criar um cofre digital que protege um valor armazenado.
//🎯 O que precisa ser feito
//Crie uma classe Cofre
//O valor armazenado deve ser private
//Crie métodos para:
//Depositar valor
//Sacar valor
//O saque só pode acontecer se houver saldo suficiente
//Crie um método para consultar o saldo
//⚠️ Regras
//O saldo não pode ser acessado diretamente
//Todo acesso deve passar pelos métodos da classe


class Cofre{
    
    private var valor: Double
    init(valor: Double) {
        self.valor = valor
    }
    
    func deposito(valorDepositado: Double) -> Double {
        var saldo = valor + valorDepositado
        
        return saldo
    }
    
    func sacar(valorSaque: Double) -> Double {
        var saldo = valor - valorSaque
        return saldo
    }
    
    func consultarSaldo() -> Double {
        return valor
    }
    
}

let cofre = Cofre(valor: 400)

print(cofre.consultarSaldo())

print(cofre.deposito(valorDepositado: 233))

print(cofre.sacar(valorSaque: 300))

print(cofre.consultarSaldo())




//Desafio 4 – Usuário Seguro
// Descrição
//Você está criando um sistema de usuários onde a senha precisa ser protegida.
// O que precisa ser feito
//Crie uma classe Usuario
//A senha deve ser private
//A senha só pode ser alterada por um método
//A nova senha deve ter pelo menos 6 caracteres
//Se não for válida, a senha não deve ser alterada

// Regras
//Não permita acesso direto à senha
//A validação deve acontecer dentro da classe


class Usuario {
    
    private var senha: String
    
    init(senha: String) {
        self.senha = senha
    }
    
    func alterarSenha(novaSenha: String) -> Bool {
        if novaSenha.count >= 6 {
            senha = novaSenha
            return true
        } else {
            return false
        }
    }
}

let usuario = Usuario(senha: "123456")
let sucesso = usuario.alterarSenha(novaSenha: "abcdef")
let erro = usuario.alterarSenha(novaSenha: "123")

print(sucesso)
print(erro)



//Desafio 5 – Funcionários da Empresa
// Descrição
//Uma empresa possui funcionários de tipos diferentes, e cada um tem uma forma distinta de cálculo salarial.
// O que precisa ser feito
//Crie uma classe base Funcionario
//Crie um método calcularSalario() -> Double
//Crie subclasses como:
//CLT
//PJ
//Cada tipo deve calcular o salário de forma diferente
//Armazene os funcionários em um array [Funcionario]
//Percorra o array imprimindo o salário de cada funcionário
//Regras
//Use polimorfismo
//Não use if ou switch
//O salário não pode ser um valor público e alterável diretamente

class Funcionario {
    
    private var salarioBase: Double
    
    init(salarioBase: Double) {
        self.salarioBase = salarioBase
    }
    
    func calcularSalario() -> Double {
        return salarioBase
    }
}

class CLT: Funcionario {
    override func calcularSalario() -> Double {
        return super.calcularSalario() * 0.8
    }
}

class PJ: Funcionario {
    
    override func calcularSalario() -> Double {
        return super.calcularSalario()
    }
}


let funcionario1 = CLT(salarioBase: 5000)
let funcionario2 = PJ(salarioBase: 7000)
let funcionarios: [Funcionario] = [funcionario1, funcionario2]


for funcionario in funcionarios {
    print(funcionario.calcularSalario())
}

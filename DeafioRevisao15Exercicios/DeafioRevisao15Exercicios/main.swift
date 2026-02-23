//
//  main.swift
//  DeafioRevisao15Exercicios
//
//  Created by Eduardo on 18/02/26.
//

import Foundation

//🧩 Desafio 1 — Cadastro de Funcionário com Promoção
//Cenário real:
//
// Você trabalha em um sistema interno de RH de uma empresa que precisa cadastrar funcionários e gerenciar promoções.
//O que deve existir:
//Uma struct chamada FuncionarioDados
//nome
//idade
//cargo
//Uma class chamada Funcionario
//dados do funcionário
//salário
//Funcionalidades obrigatórias:
//Criar funcionário
//Promover funcionário
//Aumentar salário
//Regras:
//Promoção deve alterar o cargo
//Deve aplicar aumento no salário
//Dicas:
//Use var para permitir alteração
//Métodos dentro da class
//Pense que a struct são dados estáticos e a class gerencia regras


struct FuncionarioDados{
    let nome: String
    let idade: Int
    var cargo: String
}

class Funcionario {
    var dadosDoFuncionario: FuncionarioDados
    var salario: Double
    
    init(dadosDoFuncionario: FuncionarioDados, salario: Double) {
        self.dadosDoFuncionario = dadosDoFuncionario
        self.salario = salario
    }
    
    func promoverFuncionario( novoCargo:String, aumentoSalario: Double){
        salario = salario + aumentoSalario
        dadosDoFuncionario.cargo = novoCargo
    }
}

var funcionario = Funcionario(dadosDoFuncionario: FuncionarioDados(nome: "Eduardo", idade: 36, cargo: "Gerente"), salario: 15000)
print(funcionario.dadosDoFuncionario, funcionario.salario)

funcionario.promoverFuncionario(novoCargo: "Gerente Geral", aumentoSalario: 10000)

print(funcionario.dadosDoFuncionario, funcionario.salario)



print("=============02============")

//🧩 Desafio 2 — Carrinho de Compras
//Cenário real:
//
// Você está desenvolvendo um e-commerce e precisa modelar um carrinho.
//O que deve existir:
//struct Produto
//nome
//preço
//class Carrinho
//lista de produtos
//Funcionalidades:
//Adicionar produto
//Remover produto
//Calcular total
//Regras:
//Total = soma de todos os preços
//Carrinho começa vazio
//Dicas:
//Use Array
//Use reduce ou loop
//Crie funções separadas


struct Produto {
    let nome: String
    let preco: Double
}

class Carrinho {
    var listaDeProdutos:[Produto] = []
    
    func adicionarProduto(nomeProduto: String, valorDoProduto: Double){
        listaDeProdutos.append(Produto.init(nome: nomeProduto, preco: valorDoProduto))
    }
    func removerProduto(RemoverProdutoDalinha: Int){
        listaDeProdutos.remove(at: RemoverProdutoDalinha)
    }
    func valorTotalDaCompra() -> Double {
        let total = listaDeProdutos.reduce(0) { $0 + $1.preco }
        return total
    }
}

var carrinho = Carrinho()
carrinho.adicionarProduto(nomeProduto: "A", valorDoProduto: 10)
carrinho.adicionarProduto(nomeProduto: "B", valorDoProduto: 20)
carrinho.adicionarProduto(nomeProduto: "C", valorDoProduto: 30)
carrinho.adicionarProduto(nomeProduto: "D", valorDoProduto: 40)
carrinho.adicionarProduto(nomeProduto: "E", valorDoProduto: 50)
carrinho.adicionarProduto(nomeProduto: "F", valorDoProduto: 60)

print(carrinho.listaDeProdutos)
var total = carrinho.valorTotalDaCompra()
print(total)

carrinho.removerProduto(RemoverProdutoDalinha: 4)
print(carrinho.listaDeProdutos)
var total1 = carrinho.valorTotalDaCompra()
print(total1)


print("=============03============")
//🧩 Desafio 3 — Conta Bancária
//Cenário real:
//
// Sistema bancário sim ples.
//Estrutura:
//struct Cliente
//nome
//CPF
//class ContaBancaria
//cliente
//saldo
//Funcionalidades:
//Depositar
//Sacar
//Ver saldo
//Regras:
//Não permitir saque maior que saldo
//Dicas:
//Use if para validação
//Saldo inicia em 0


struct Cliente{
    let nome: String
    let CPF: String
}

class ContaBancaria{
    var cliente: Cliente
    private(set) var saldo: Double
    
    init(cliente: Cliente, saldo: Double) {
        self.cliente = cliente
        self.saldo = saldo
    }
    
    func depositar(valorDeposito: Double){
        guard valorDeposito > 0 else{return}
        saldo += valorDeposito
    }
    
    func sacar(valorSaque: Double){
        guard valorSaque <= saldo else{
            print("Saldo insuficiente")
                       return
        }
        saldo -= valorSaque
    }
    func consultaSaldo()-> Double{
        return saldo
    }
}

let cliente1 = Cliente(nome: "Eduardo", CPF: "09212998690")
let conta = ContaBancaria(cliente: cliente1, saldo: 100000.00)

print(conta)
print(conta.consultaSaldo())

conta.depositar(valorDeposito: 45000)
print(conta.consultaSaldo())

conta.sacar(valorSaque: 111111)
print(conta.consultaSaldo())




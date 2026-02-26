//
//  main.swift
//  DesafioCadastroFuncionariosPromocaoBasic
//
//  Created by Eduardo on 13/02/26.
//

import Foundation


print("Hello, World!")

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


struct FuncionarioDados {
    
    let name: String
    let idade: Int
    var cargo: String
}

class Funcionario {
    var dadosFuncionario: FuncionarioDados
    var salario: Double
    
    init(dadosFuncionario: FuncionarioDados, salario: Double) {
        self.dadosFuncionario = dadosFuncionario
        self.salario = salario
    }
    
    func promoverFuncionario (cargo: String){
        dadosFuncionario.cargo = cargo
    }
    
    func aumentoSalario(valoraumentoSalario: Double){
        let salarioComAumento = salario + valoraumentoSalario
        salario = salarioComAumento
    }
}

var dadosFunc: FuncionarioDados = FuncionarioDados(name: "Eduardo", idade: 38, cargo: "Gerente Geral")
var funcionario: Funcionario = Funcionario(dadosFuncionario: dadosFunc, salario: 30000)

print(funcionario.dadosFuncionario)
print(funcionario.salario)

funcionario.aumentoSalario(valoraumentoSalario: 3000)
funcionario.promoverFuncionario(cargo: "Superintendente")

print(funcionario.dadosFuncionario)
print(funcionario.salario)
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
print("")
print("")
print("================02=============")
print("")
print("")


struct Produto{
    let nome: String
    let preco: Double
}

class Carrinho{
    
    var listaDeProdutos:[Produto] = []
    
    func adicionarProdutos(produto: Produto){
        guard produto.preco > 0 else{return}
        listaDeProdutos.append(produto)
    }
    
    func removerProduto(iten: Int){
        listaDeProdutos.remove(at: iten)
        print(listaDeProdutos)
    }
    
    func calcularSaldo() -> Double{
        let valorAPagar = listaDeProdutos.reduce(0) { $0 + $1.preco}
        return valorAPagar
    }
    
}

var carrinho = Carrinho()
carrinho.adicionarProdutos(produto: Produto(nome: "Caderno", preco: 45.33))
carrinho.adicionarProdutos(produto: Produto(nome: "Caderno", preco: 45.33))
carrinho.adicionarProdutos(produto: Produto(nome: "Lapis", preco: 5.00))
carrinho.adicionarProdutos(produto: Produto(nome: "caneta", preco: 4.0))
carrinho.adicionarProdutos(produto: Produto(nome: "Borracha", preco: 42.44))
carrinho.adicionarProdutos(produto: Produto(nome: "Livro", preco: 56.55))

var saldo = carrinho.calcularSaldo()

print(carrinho.listaDeProdutos)

print(saldo)

carrinho.adicionarProdutos(produto: Produto(nome: "Mochila", preco: 100.00))

var saldo2 = carrinho.calcularSaldo()
print(saldo2)
print("=============03============")
//🧩 Desafio 3 — Conta Bancária
//Cenário real:
//
// Sistema bancário simples.
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

print("")
print("")
print("================03=============")
print("")
print("")
struct Cliente {
    let nome: String
    let cpf: String
}

class ContaBancaria{
    let cliente: Cliente
    var saldo: Double
    
    init(cliente: Cliente, saldo: Double) {
        self.cliente = cliente
        self.saldo = saldo
    
    }
    
    func depositar(valorDeposito:Double){
        guard valorDeposito > 0 else{
            print("Depósito minimo R$ 1.00,00")
            return}
        saldo += valorDeposito
        print("Deposito de \(valorDeposito) realizado")
    }
    
    func sacar(valorDoSaque: Double){
        guard valorDoSaque < saldo else {
            print("Saldo insuficiente")
            return}
        saldo -= valorDoSaque
        print("Saque de \(valorDoSaque) realizado")
    }
    
    func consultaSaldo() {
        let saldoConsultado = saldo
        print("Saldo: \(saldoConsultado)")
    }
}

let cadastroCliente: Cliente = Cliente(nome: "Eduardo", cpf: "09212998690")
let contabancaria: ContaBancaria = ContaBancaria(cliente: cadastroCliente, saldo: 134000.00)

print(contabancaria.cliente)


contabancaria.consultaSaldo()
contabancaria.depositar(valorDeposito: 15000)
contabancaria.consultaSaldo()
contabancaria.sacar(valorDoSaque: 1000)
contabancaria.consultaSaldo()
print("=============04============")
//🧩 Desafio 4 — Sistema Escolar
//Cenário real:
//
// Sistema que calcula média do aluno.
//Estrutura:
//struct Aluno
//nome
//matrícula
//class Matricula
//notas array
//Funcionalidades:
//Calcular média
//Mostrar situação
//Regras:
//Média ≥ 7 → Aprovado
//Dicas:
//Use array de Double
//Use reduce ou loop


struct Aluno {
    let nome: String
    let matricula: String
}

class Matricula {
    var aluno: Aluno
    var notas: [Double]
    
    init(aluno: Aluno, notas: [Double]) {
        self.aluno = aluno
        self.notas = notas
    }
    
    func calcularMedia() -> Double {
        return notas.reduce(0) { $0 + $1 } / Double(notas.count)
    }
    
    func mostrarSituacao() -> String{
        let notaFinal = calcularMedia()
        if notaFinal >= 7 {
            return ("Aprovado")
        }else{
            return ("Reprovado")
        }
    }
}
let aluno: Aluno = Aluno(nome: "Eduardo", matricula: "2403")
let matricula: Matricula = Matricula(aluno: aluno, notas: [6.6,8,9,6,7.4,8,7])

print("O Aluno \(aluno.nome), matrícula \(aluno.matricula), foi \(matricula.mostrarSituacao()) com a nota  \(matricula.calcularMedia())")

print("=============05============")
//🧩 Desafio 5 — Frota de Veículos
//Cenário real:
//
// Empresa de logística controla veículos.
//Estrutura:
//struct Veiculo
//modelo
//placa
//class Frota
//lista de veículos
//Funcionalidades:
//Adicionar veículo
//Listar veículos
//Dicas:
//Use array
//Faça loop para listar
//2️⃣ POO (5)


struct Veiculo {
    let modelo: String
    let placa: String
}

class Frota {
    
    private var listaDeveiculos: [Veiculo] = []
        
    func adicionarVeiculo(veiculo: Veiculo){
        listaDeveiculos.append(veiculo)
    }
    
    func listarVeiclos(){
        for veiculo in listaDeveiculos{
            print("Veiculo: \(veiculo.modelo) - Marca: \(veiculo.modelo)")
        }
    }
}

var frota = Frota()
frota.adicionarVeiculo(veiculo: Veiculo(modelo: "HB-20", placa: "ERE4DAX"))
frota.adicionarVeiculo(veiculo: Veiculo(modelo: "FordK", placa: "EFD#@#"))

print(frota.listarVeiclos())
print("=============06============")
//🧩 Desafio 6 — Sistema de Animais
//Cenário:
//
// Petshop precisa simular sons.
//Criar:
//Classe base Animal
//Método emitirSom()
//Subclasses:
//Cachorro → Latir
//Gato → Miar
//Dicas:
//Use override
//Use herança

class Animal{
    
    let animal: String
    let cor: String
    
    init(animal: String, cor: String) {
        self.animal = animal
        self.cor = cor
    }
    
    func emitirsom(){
        print("Emitir som")
    }
}


class Cachorro: Animal{
    override func emitirsom() {
        print("O cachoro late")
    }
}

class Gato: Animal{
    override func emitirsom() {
        print("O gato mia")
    }
}

var cachoro = Cachorro(animal: "Cachoro", cor: "Marrom")
cachoro.emitirsom()

var gato = Gato(animal: "Gato", cor: "Branco")
gato.emitirsom()


var animal: [Animal] = [Cachorro(animal: "Cachorro", cor: "Marrom"),
                        Gato(animal: "Gato", cor: "Preto")]

for animais in animal{
    animais.emitirsom()
}
print("=============07============")
//🧩 Desafio 7 — Funcionários e Bônus
//Cenário:
//
// Empresa paga bônus diferente.
//Classe base:
//Funcionario
//salário
//Subclasses:
//Gerente → 20%
//Dev → 10%
//Dicas:
//Polimorfismo
//Método bonus()


class Funcionario2{
    let salario: Double
    
    init(salario: Double) {
        self.salario = salario
    }
    
    func bonus() -> Double{
        return salario
    }
}

class Gerente: Funcionario2 {
    override func bonus() -> Double {
        let valorSalario = salario + salario * 0.2
        return valorSalario
    }
}

class Dev: Funcionario2{
    override func bonus() -> Double {
        let valorSalario = salario + salario * 0.1
        return valorSalario
    }
}

var gerente = Gerente(salario: 45000)
print(gerente.bonus())

var dev = Dev(salario: 24000)
print(dev.bonus())

print("=============08============")
//🧩 Desafio 8 — Formas Geométricas
//Cenário:
//
// App educacional de matemática.
//Classe base:
//Forma → método area()
//Subclasses:
//Quadrado
//Círculo
//Dicas:
//Use .pi
//Override


class FormasGeometricas{
    
    func area() -> Double{
        return 0
    }
}

class Quadrado: FormasGeometricas{
    let lado: Double
    
    init(lado: Double) {
        self.lado = lado
    }
    
    override func area() -> Double {
        return lado*lado
    }
}

class Circulo: FormasGeometricas{
    let raio: Double
    
    init(raio: Double) {
        self.raio = raio
    }
    override func area() -> Double {
        return .pi * raio * raio
    }
}

var areaDasFormas:[FormasGeometricas] = [Quadrado(lado:2),
                                         Circulo(raio: 6)]

for formas in areaDasFormas {
    print(formas.area())
}
print("=============09============")
//🧩 Desafio 9 — Pagamentos
//Cenário:
//
// Gateway de pagamento.
//Classe base: Pagamento
//Subclasses:
//Cartão
//Boleto
//Pix
//Cada um processa diferente.

class Pagamento {
    let valor: Double
    
    init(valor: Double) {
        self.valor = valor
    }
    
    func processamento(){
        print("pagamento comum")
    }
}

class Cartao: Pagamento {
    override func processamento() {
        let total = valor + valor*0.02
        print("Pagamento no cartão: \(total)")
    }
}

class Boleto: Pagamento {
    override func processamento() {
        let total = valor + valor*0.01
        print("Pagamento no Boleto: \(total)")
    }
}

class Pix: Pagamento {
    override func processamento() {
        let total = valor
        print("Pagamento sem acrescimento \(total)")
    }
}

var pagamento: [Pagamento] = [Cartao(valor: 100), Boleto(valor: 100), Pix(valor: 100)]

for pag in pagamento{
    pag.processamento()
}

print("=============10============")

//🧩 Desafio 10 — Veículos
//Cenário:
//
// Simulador de direção.
//Base: Veiculo → mover()
//Subclasses:
//Carro
//Moto
//3️⃣ ESTRUTURA DE REPETIÇÃO (5)

class Veiculo2 {
    
    func mover(){
        
    }
}

class Moto: Veiculo2 {
    override func mover() {
        print("Moto se movendo")
    }
}

class Carro: Veiculo2 {
    override func mover() {
        print("Carro se movendo")
    }
}

var veiculos: [Veiculo2] = [Carro(), Moto()]

for vc in veiculos {
    vc.mover()
}

print("=============11============")
//🧩 Desafio 11 — Números Pares
//Objetivo:
//
// Mostrar pares de 1 a 100.
//Dicas:
//Use for
//Use % 2


for numero in 1...100 {
    if numero % 2 == 0 {
        print(numero)
    }
}


print("=============12============")
//🧩 Desafio 12 — Soma de Compras
//Cenário:
//
// Caixa de supermercado.
//Array: valores de compras.
//Objetivo:
//
// Somar tudo.

struct Produdo2{
    let produto: String
    let valor: Double
}

class Caixa{
    var produtos2:[Produdo2] = [Produdo2(produto: "Leite", valor: 2.34),
                                Produdo2(produto: "Carvao", valor: 24.00),
                                Produdo2(produto: "Carne", valor: 350.00),
                                Produdo2(produto: "Cerja", valor: 450.00)]
    
    func listaDeCompras() -> Double{
        return produtos2.reduce(0) { $0 + $1.valor }
    }
}

let valorDaCompra = Caixa()
print(valorDaCompra.listaDeCompras())

print("=============13============")
//🧩 Desafio 13 — Tabuada
//Objetivo:
//
// Gerar tabuada 1 → 10.
//Dicas:
//Loop
//Multiplicação

var tabuada1a10:[Int] = Array(1...10)

for valor in 1...10 {
    print( valor * tabuada1a10.count)
}

print("=============14============")

//🧩 Desafio 14 — Contagem Regressiva
//Objetivo:
//
// 10 até 0.
//Dicas:
//stride

for numero3 in stride(from: 10, through: 0, by: -1){
    print(numero3)
}

print("=============15============")

//🧩 Desafio 15 — Média de Notas
//Cenário:
//
// Professor calculando média.
//Dicas:
//Somar
//Dividir pela quantidade


var notas2: [Double] = [6.4, 7.4, 8.9, 10]

func notasAlunos() -> Double {
    return notas2.reduce(0, +) / Double(notas2.count)
}

var mediaNota = notasAlunos()
print(mediaNota)




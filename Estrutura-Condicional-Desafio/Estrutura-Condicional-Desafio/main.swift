//
//  main.swift
//  Estrutura-Condicional-Deafio
//
//  Created by Eduardo on 22/01/26.
//

import Foundation

print("Hello, World!")

//MARK: Exercicio alunos


//1- Crie uma função que receba dois parâmetros (nota1: Double, nota2: Double) e retorne "Aluno aprovado” se a media das notas for maior ou igual a 7. Caso contrário retorne "Aluno reprovado"

func notaFinal(nota1: Double, nota2: Double){
    let media = (nota1 + nota2)/2
    if media >= 7{
        print("Aluno aprovado")
    } else {
        print("Aluno reprovado")
    }
}

notaFinal(nota1: 5, nota2: 9)

print("===============")
print("====== 2 ======")
print("===============")

//2- Crie uma função "desconto" que receba um parâmetro (total: Double). Caso o total (parâmetro) seja menor que 100.0, dê 10% de desconto. Caso o valor esteja entre 100.0 e 200.0 dê 15% de desconto. Valores acima de 200.0 dê 20% de desconto. A função tem que ter um retorno do tipo Double que vai ser o total (parâmetro) com o desconto aplicado de acordo com as condições citadas.
// Dica: return total * 0.9 (isso significa o valor com 10% de desconto)



func desconto(total: Double) -> Double{
        if total < 100 {
            return total * 0.9
        } else if total <= 200 {
            return total * 0.85
        } else {
            return total * 0.8
        }
    }

let valorAPAgar = desconto(total: 144)
print(valorAPAgar)


print("===============")
print("====== 3 ======")
print("===============")

//3- Crie uma função semáforo que receba uma parâmetro do tipo string. Se o valor recebido no parâmetro for vermelho, retorne "PARE", se for amarelo, retorne "ATENÇÃO", se for verde, retorne "SIGA EM FRENTE", se não, retorne "PARÂMETRO INVÁLIDO" caso o valor recebido seja diferente dos já citados.

func semafaro(cor: String) -> String {
    let corSemafaro = cor
    
    if corSemafaro == "vermelho" {
        return ("PARE")
    } else if corSemafaro == "amarelo" {
        return ("ATENÇÃO")
    } else if corSemafaro == "verde" {
        return("SIGA EM FRENTE")
    } else  {
        return("PARAMETRO INVALIDO")
    }
}

var corSemafaro = semafaro(cor: "vermelho")
print("Cor do semafaro\(corSemafaro)")


print("===============")
print("====== 4 ======")
print("===============")

//4- Crie uma função que receba dois parâmetros (eFimDeSemana: Bool, tenhoDinheiro: Bool) e caso
//seja final de semana e você tenha dinheiro, print "VAMOS PASSEAR", caso contrário, print "VAMOS FICAR EM CASA"


func programacaoFinalDeSemana(eFimDeSemana: Bool, tenhoDinheiro: Bool){
    if eFimDeSemana && tenhoDinheiro {
        print("VAMOS PASSEAR")
    }else{
        print("VAMOS FICAR EM CASA")
    }
}

programacaoFinalDeSemana(eFimDeSemana: false, tenhoDinheiro: true)



print("===============")
print("====== 5 ======")
print("===============")

//5- Crie uma função que receba dois parâmetros do tipo Double e caso o valor do 1° parâmetro seja maior que o valor do 2° parâmetro. Retorne "Bola", caso contrário, retorne "Banana"

func parametrosMaiores(valor1: Int , valor2: Int) {
    
    if valor1 > valor2 {
        print("Bola")
    }else{
        print("Banana")
    }
}

parametrosMaiores(valor1: 45, valor2: 333)

print("===============")
print("====== 6 ======")
print("===============")

//6- Crie uma função que receba um parâmetro (foiConvidado: Bool). Caso o valor seja true, print "Liberado para a festa" Caso contrário, print "Infelizmente você não foi convidado"

func acessoAFesta(foiConvidado:Bool) {
    if foiConvidado{
        print("Liberado para a festa")
    }else{
        print("Infelizmente você não foi convidado")
    }
}

acessoAFesta(foiConvidado: false)


print("===============")
print("====== 7 ======")
print("===============")
//7 - Implemente uma função que receba a idade de uma pessoa e determine se ela tem direito a entrada gratuita em um evento. Entrada gratuita é concedida para pessoas com menos de 5 anos ou mais de 65 anos.


func entradaGratuita(idade:String){
    let idades = Int(idade)
    guard let idades else {return}
    
    if idades <= 5 || idades >= 65 {
        print("Entrada gratuita!")
    }else{
        print("Necessario pagar sua entrada!")
    }
}

entradaGratuita(idade: "6")

print("===============")
print("====== 8 ======")
print("===============")

//8 - Crie uma função que receba um score de crédito (tipo Int) de 0 a 1000 e retorne se a pessoa tem um "Bom crédito" (score acima de 700), "Crédito regular" (score entre 300 e 700) ou "Mau crédito" (abaixo de 300).

func credito(score:Int){
    if score <= 1000{
        if score > 700{
            print("Bom Credito")
        } else if score >= 300 && score <= 700{
            print("Credito Regular")
        } else if score <= 300{
            print("Mau Credito")
        }
    }else {
        print("Verificar score")
    }
}

credito(score: 565)


print("===============")
print("====== 9 ======")
print("===============")

//9 - Implemente uma função que receba um dia da semana (tipo String) e retorne "Dia útil" se for de segunda a sexta, e "Final de semana" se for sábado ou domingo.



func diaDaSemana(dia: String) -> String {
    
    let diaAjustado = dia.trimmingCharacters(in: .whitespacesAndNewlines).lowercased()
    
    let diasUteis: [String] = ["segunda","terça", "quarta", "quinta", "sexta"]
    
    let diasNaoUteis: [String] = ["sábado", "domingo"]
    
    if diasUteis.contains(diaAjustado) {
        
        return " Dia Util"
        
    }else if diasNaoUteis.contains(diaAjustado){
        
        return "Final de semana"
    } else {
        
        return "Digite o dia corretamente"
    }
    
}

print(diaDaSemana(dia: "Domingo"))

print("===============")
print("====== 10 ======")
print("===============")


//10 - Desenvolva uma função que receba uma senha (tipo String) e retorne "Senha fraca" se tiver menos de 6 caracteres, "Senha média" se tiver entre 6 e 8 caracteres, e "Senha forte" se tiver mais de 8 caracteres.
// Dica: Para descobrir a quantidade de caracteres de uma string, basta utilizar a propriedade .count
// var nome: String = "caio"
// print(nome.count) -> vai printar a quantidade de caracteres

func criarSenha(senha: String) -> String  {
    
    let quantidadeDeCaracteries = senha.count
    
    switch quantidadeDeCaracteries {
        
    case 1...6:
        return "Senha fraca"
        
    case 7...8:
        return "Senha Média"
        
    default:
        return "Senha Forte"
    }
}
    
    print(criarSenha(senha: "dfdfdfdfdfdf"))
    
print("===============")
print("====== 11 ======")
print("===============")

    //11 - Crie uma função que receba a altura de uma pessoa em metros (tipo Double) e retorne "Baixa" se for menor que 1.60 metros, "Média" se for entre 1.60 e 1.85 metros, e "Alta" se for maior que 1.85 metros.
    
    func verificarPadraoDeAltura(altura: Double) -> String {
        let verificarAltura = altura
        
        switch verificarAltura{
            
        case ..<1.60:
            return "Baixa"
            
        case 1.60...1.85:
            return "Média"
            
        default:
            return "Alta"
        }
    }
    
    
print(verificarPadraoDeAltura(altura: 1.5))

print("===============")
print("====== 12 ======")
print("===============")
    
    //12 - Crie uma função que receba a idade de uma pessoa (tipo Int) e o tempo de serviço em anos (tipo Int). Uma pessoa é elegível para promoção se tiver mais de 30 anos e mais de 5 anos de serviço. A função deve retornar "Promoção Elegível" se ambas as condições forem verdadeiras, e "Promoção Não Elegível" caso contrário.
    

func promocao(idade: Int, tempoDeServico: Int) -> String{

    if idade > 30 && tempoDeServico > 5 {
        return "Promoção Elegível"
    }
        return "Promoção Nǎo Elegível"
}

print(promocao(idade: 65, tempoDeServico: 6))

print("===============")
print("====== 13 ======")
print("===============")
    
    //13 - Implemente uma função que receba a previsão de chuva (tipo Bool) e a temperatura (tipo Double). O evento ao ar livre deve ser cancelado se chover (true) ou se a temperatura for inferior a 15 graus. A função deve retornar "Evento Cancelado" se alguma das condições for verdadeira, e "Evento Confirmado" caso contrário.
    

func previsaoDoTempo(vaiChover: Bool, temperatura: Double) -> String {
    if vaiChover || temperatura < 15 {
        return "Evento Cancelado"
    }
        return "Evento Confirmado"
    
}

print(previsaoDoTempo(vaiChover: false, temperatura: 34))
    

print("===============")
print("====== 14 ======")
print("===============")

    //14 - Desenvolva uma função que receba uma senha (tipo String) e a hora do dia (tipo Int, representando a hora). O acesso é permitido se a senha for "1234" e for entre as 9h e as 17h. A função deve retornar "Acesso Permitido" se ambas as condições forem verdadeiras, e "Acesso Negado" se qualquer uma das condições não for atendida.
    
    
func acessoAoCofre(senha: String, hora: Int) -> String {
    
    if senha == "1234" && hora >= 9 && hora <= 17 {
        
        return "Acesso Permitido"
    }
    
        return "Acesso negado"
}

print(acessoAoCofre(senha: "1234", hora: 16))



//Estudos

// 15 Crie uma função que receba um número inteiro e retorne "Positivo", "Negativo" ou "Zero" de acordo com o valor informado.


func numeroInteiro(numero: String?) -> String {
    
    guard let  texto = numero, !texto.isEmpty, let numeros = Int(texto) else {
        return "Insira um numero válido"
    }
    
            if numeros > 0 {
        return "Positivo"
    }else if numeros < 0 {
        return "Negativo"
    }else {
        return "Zero"
    }
}

print(numeroInteiro(numero:"er"))



//16 - Crie uma função que receba um número inteiro e retorne "Par" se o número for par ou "Ímpar" se for ímpar.

func retornaParOuImpar(numero: String?) -> String {
    
    guard let numeroInserido = numero, !numeroInserido.isEmpty, let valor = Int(numeroInserido) else {
        return " insira um numero inteiro"
    }
    
    if valor % 2 == 0 {
        return "PAR"
    } else{
        return "IMPAR"
}
print(retornaParOuImpar(numero: "0"))

//17 - Crie uma função que receba três notas (Double) e retorne "Aprovado" se a média for maior ou igual a 7, "Recuperação" se estiver entre 5 e 6.9 e "Reprovado" se for menor que 5.
    
    
    
    
//18
//Crie uma função que receba uma idade (Int) e retorne "Criança" (0–12), "Adolescente" (13–17), "Adulto" (18–59) ou "Idoso" (60+).
//19
//Crie uma função que receba a quantidade de horas trabalhadas (Int) e retorne "Hora extra" se for maior que 8 ou "Carga normal" caso contrário.
//20
//Crie uma função que receba um valor de compra (Double) e retorne "Frete grátis" se o valor for maior ou igual a 200, caso contrário "Frete cobrado".
//21
//Crie uma função que receba uma letra (String) e retorne "Vogal" se for vogal ou "Consoante" caso contrário.
//22
//Crie uma função que receba dois números inteiros e retorne "Números iguais" se forem iguais ou "Números diferentes" caso contrário.
//23
//Crie uma função que receba um número inteiro de 1 a 7 e retorne o dia da semana correspondente. Caso o número esteja fora do intervalo, retorne "Dia inválido".
//24
//Crie uma função que receba uma temperatura (Double) e retorne "Frio" (menor que 18), "Agradável" (18 a 25) ou "Quente" (acima de 25).
//25
//Crie uma função que receba um valor booleano indicando se o usuário está logado e retorne "Acesso liberado" ou "Acesso negado".
//26
//Crie uma função que receba um salário (Double) e retorne "Isento" se for até 2000, "Imposto médio" se estiver entre 2000 e 5000, ou "Imposto alto" se for maior que 5000.
//27
//Crie uma função que receba uma senha (String) e retorne "Senha inválida" se estiver vazia ou "Senha válida" caso contrário.
//28
//Crie uma função que receba um valor inteiro representando o nível de bateria (0 a 100) e retorne "Bateria baixa" (0–20), "Bateria média" (21–80) ou "Bateria cheia" (81–100).
//29
//Crie uma função que receba um horário (Int) e retorne "Manhã" (5–11), "Tarde" (12–17), "Noite" (18–23) ou "Horário inválido".

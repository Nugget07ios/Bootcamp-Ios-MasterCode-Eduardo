//
//  main.swift
//  Desafio Coleções
//
//  Created by Eduardo on 22/01/26.
//

import Foundation

//Você tem uma lista de compras com alguns itens.
//Desafio:
//Crie uma coleção com 5 itens de mercado
//Mostre todos os itens no console
//👉 Objetivo: entender Array e acesso aos elementos.

print("-------------1-----------------")
print("")

let listaDeCompras:[String] = ["Leite", "Pão", "Bolacha", "Iorgute", "Achocolatado"]
let lista = listaDeCompras
print(lista)

for list in listaDeCompras {
    print(list)
}

print(listaDeCompras[4])

print("")
print("-------------2-----------------")
print("")

//Você tem uma lista com nomes de alunos.
//Desafio:
//Crie uma coleção com alguns nomes
//Mostre quantos alunos existem na lista
//👉 Objetivo: usar .count.

let listaDeAlunos:[String] = ["Eduardo", "Felipe H", "Walace", "Gabriel Dantas", "Gabriel Merenfeld", "Juliano", "Marcelo Henrique" ]

let quantidadeDeAluno = listaDeAlunos.count

if !listaDeAlunos.isEmpty {
    
    print("No BootCamp MaterCode temos \(quantidadeDeAluno) alunos.")
}


print("")
print("-------------3-----------------")
print("")


//Você tem uma lista de frutas.
//Desafio:
//Verifique se a fruta "banana" existe na lista
//Mostre uma mensagem dizendo se existe ou não
//👉 Objetivo: trabalhar com contains.


let listaDeFrutas:[String] = ["Banana", "Maça", "Laranja", "Conde","Cupuaçu"]
let pesquisarFruta = listaDeFrutas.contains("Banana")


if pesquisarFruta == false {
    
    print("A lista não contém Banana")
    
}else{
    
    print("A lista contém Banana")
}

print("")
print("-------------4-----------------")
print("")

//Você tem uma lista de tarefas.
//Desafio:
//Adicione uma nova tarefa à lista
//Mostre a lista atualizada
//👉 Objetivo: adicionar elementos em uma coleção.


var taskToDo: [String] = ["Criar tela de Login", "Criar tela de Home", "Criar tela de Registro"]

taskToDo.append("Criar tela de Recuperar Senha")
print("\(taskToDo)")

taskToDo.insert("Criar tela de calculos", at: 1)
print("\(taskToDo)")



print("")
print(" Desafios Básicos — Estruturas de Repetição")
print("")


print("")
print("-------------5-----------------")
print("")


//Você precisa mostrar números de 1 até 10.
//Desafio:
//Use uma estrutura de repetição para mostrar esses números
//👉 Objetivo: entender for.


for notas in 1...10{
    print("\(notas)")
}

print("")
print("-------------6-----------------")
print("")


//Você tem uma lista de nomes.
//Desafio:
//Use um laço de repetição para mostrar cada nome
//👉 Objetivo: percorrer um Array com for.


let listaDeAlunos2:[String] = ["Eduardo", "Felipe H", "Walace", "Gabriel Dantas", "Gabriel Merenfeld", "Juliano", "Marcelo Henrique" ]

for alunos in listaDeAlunos2 {
    
    print(alunos)
}

print("")
print("-------------7-----------------")
print("")

//Você tem uma lista de números.
//Desafio:
//Some todos os números da lista
//Mostre o resultado final
//👉 Objetivo: repetição + lógica simples.


let idades: [Int] = [23,34,23,67,56,43,32,21,11]

if !idades.isEmpty {
    
    let soma = idades.reduce(0) { inicial, valor in
        inicial + valor
    }
    
    print("\(soma)")
}

print("")
print("-------------8-----------------")
print("")


//Você quer mostrar números de 0 até 5.
//Desafio:
//Use uma estrutura de repetição para isso
//👉 Objetivo: entender intervalo (0...5).


for numero in 0...5{
    print("\(numero)")
}

print("")
print("-------------9-----------------")
print("")

// Desafios Mistos (Coleções + Repetição)
// Lista de alunos
//Você tem uma lista de alunos com idades.
//Desafio:
//Guarde os nomes em uma coleção
//Use repetição para mostrar cada nome
//👉 Objetivo: unir Array + for.


let listaDeAlunos3: [String:Int] = ["José":45, "Maria":67, "Cesar":40, "João": 23]

for idade in listaDeAlunos3.keys{
    print(idade)
}


print("")
print("-------------10-----------------")
print("")

//Verificando notas
//Você tem uma lista de notas.
//Desafio:
//Use repetição para verificar quais notas são maiores ou iguais a 7
//Mostre apenas essas notas
//👉 Objetivo: for + condição.



let listaDeNotas: [String:Int] = ["José":7, "Maria":8, "Cesar":5, "João": 6]
var notasMaiores: [String] = []

for (nome, nota) in listaDeNotas{
    
    if nota >= 7 {
        
        notasMaiores.append(nome)
        
        print("\(nome) foi aprovado com nota \(nota)")
    }
}
     

/*
Deve ser utilizado apenas um vetor de 10 posições. Considerando que o
hotel tenha 10 quartos, desenvolva um algoritmo para marcar a ocupação de cada
quarto. Use um laço PARA a fim de garantir que todos os quartos iniciem como
livres (“L”). O sistema deve solicitar e o usuário informará o número do quarto -
que deve ser de 1 a 10. Internamente o número do quarto precisa ser de0 até 9
(vetor de 10 posições), então altere o valor informado pelo usuário para manipular
o vetor corretamente. O sistema questionará “O quarto está livre ou ocupado?
(L/O)”. O usuário informará “L” ou “O” e o sistema registrará essa escolha para o
quarto. Existem asseguintes regras:

● Se o quarto está livre e o usuário digita L deve ser exibida a
mensagem“quarto já está vazio”.
● Se o quarto está livre e o usuário digita O deve ser exibida a
mensagem “quarto foi ocupado” e o valor do vetor deve ser alterado.
● Se o quarto estiver ocupado e o usuário digitar L deve ser exibida a
mensagem “quarto foi liberado” e o valor do vetor deve ser alterado.
● Se o quarto estiver ocupado e o usuário digitar O deve ser exibida a
mensagem “quarto já está ocupado”.
*
*
* Resolução: 
* 1º -> Verifica se o número do quarto está dentro do intervalo válido;
* 2º -> Convertendo o número do quarto para índice do vetor (explicar o porque?);
* 3º -> Verificando e alterando o estado do quarto;
* 4º -> Se o usuário quiser continuar, reinicia a função inicio, caso contrário, o programa encerra.
*/
programa 
{
	inteiro quartos[10]
	inteiro numero_quarto
	cadeia estado
	cadeia continuar
	
	funcao inicio() 
	{
		para(inteiro i = 0; i < 10; i++) {
			quartos[i] = 0 
		}
		
		loopinho()
	}
	
	funcao loopinho()
	{
		escreva("Informe o número do quarto (de 1 a 10): ")
		leia(numero_quarto)
		
		// 1º
		enquanto (numero_quarto < 1 ou numero_quarto > 10) 
		{
			escreva("Número de quarto inválido. Redigite o número certo de 1 a 10: ")
			leia(numero_quarto)
		}
		
		escreva("Informe o estado do quarto (L para livre, O para ocupado): ")
		leia(estado)
		
		// 2º
		inteiro indice = numero_quarto - 1
		
		// 3º
		se(estado == "L") 
		{
			se(quartos[indice] == 0) 
			{
				escreva("Quarto já está vazio.\n")
			} senao 
			{
				quartos[indice] = 0
				escreva("Quarto marcado como livre.\n")
			}
		} senao se(estado == "O") 
		{
			se(quartos[indice] == 1) 
			{
				escreva("Quarto já está ocupado.\n")
			} senao 
			{
				quartos[indice] = 1
				escreva("Quarto marcado como ocupado.\n")
			}
		} senao 
		{
			escreva("Estado do quarto inválido.\n")
		}
		
		escreva("Deseja continuar? (S para sim, qualquer outra tecla para sair): ")
		leia(continuar)
		
		// 4º
		se(continuar == "S" ou continuar == "s") {
			inicio()
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1468; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
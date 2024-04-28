/* 1 - Quando uma empresa contrata o hotel para abrigar eventos, o hotel oferece
garçons para servir os convidados. Considerando que cada garçom custa R$ 10,50
por hora, escreva um algoritmo que recebe o número de garçons necessários e o
total de horas do evento. Depois calcule o custo total que o hotel terá com a
contratação desses profissionais e mostre na tela o resultado usando o portugol studio: programa */

programa
{
	funcao inicio()
	{
		inteiro numGarcons, totalHours
		real costPHour, totalCost

		escreva("Quantos garçons serão necessários? ")
		leia(numGarcons)

		escreva("Duração estimada do evento (em horas)? ")
		leia(totalHours)

		costPHour = 10.50
		totalCost = numGarcons * costPHour * totalHours

		escreva ("O custo total para contratar ", numGarcons, " garçons por ", totalHours, " horas é de R$", totalCost)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 484; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
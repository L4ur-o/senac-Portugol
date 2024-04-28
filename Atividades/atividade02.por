
/** 2- O hotel realiza agendamentos de pedidos de comidas e bebidas de no mínimo
30 usuários até no máximo 350 convidados. Construa um algoritmo onde o usuário
informa a quantidade de convidados e valida se o valor é ou não adequado Caso
não seja adequado mostre a mensagem “Número de convidados inválido”. Caso o
valor seja válido, calcule a quantidade de água, café e salgadinhos necessários
para o número de convidados do evento e mostre na tela esses valores. Tabela de
referência:
*/
 
programa
{
	funcao inicio()
	{

// Entrada
		inteiro totalInviters
		real totalWater, totalCoffee, totalSnacks
		
		escreva("Digite o número de convidados: ")
		leia(totalInviters)

// Processamento
		se(totalInviters >= 30 e totalInviters <= 350) {

			totalWater = totalInviters * 0.5
			totalCoffee = totalInviters * 0.3
			totalSnacks = totalInviters * 0.5
//Saída
			escreva("Quantidade de água necessária: ", totalWater, " litros\n")
			escreva("Quantidade de café necessária: ", totalCoffee, " litros\n")
			escreva("Quantidade de salgadinhos necessária: ", totalSnacks, " unidades\n")
		}
		senao {
			escreva("Número de convidados inválido.")
		}
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 815; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
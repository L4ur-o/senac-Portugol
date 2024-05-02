programa
{
	
	funcao inicio()
	{
		inteiro numInv
		escreva("Digite o número de convidados para o auditório: ")
		leia(numInv)

		se (numInv < 0) 
		{
			escreva("Quantidade de convidados inválida.")
		}
		
		senao se (numInv <= 150) // ou "se (numInv > 150 e numInv <= 220)"
		{
			escreva("O auditório Alfa é o mais adequado para este evento.")
		}
		
		senao se (numInv <= 220) 
		{
			inteiro maiscadeiras = numInv - 150
			escreva("O auditório Alfa com ", maiscadeiras, " cadeiras adicionais é o mais adequado para este evento.")
		}
		
		senao se (numInv <= 350) 
		{
			escreva("O auditório Beta é o mais adequado para este evento.")
		}
		
		senao 
		{
			escreva("Quantidade de convidados inválida para este programa.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 15; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
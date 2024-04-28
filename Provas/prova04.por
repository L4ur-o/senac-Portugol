/**
* Enquanto os responsáveis do hotel verificam as alterações e implementações 
* realizadas por você, foi solicitado que você realize alguns testes de mesa em 
* determinados algoritmos para aprimorar seus conhecimentos.
* Nessa tarefa poderá ser usado o Portugol para testar os códigos apresentados.
*/

programa
{
    const inteiro qtdMAXIMA = 5 // só aceitará 5 hospedes
    const real VALOR_DIARIA = 230.0

    cadeia nomes[qtdMAXIMA]
    inteiro numeros[qtdMAXIMA], diasEstadia[qtdMAXIMA]
    real valorTotalEstadia[qtdMAXIMA]

// Uma das forma de validar, é testar unidade por unidade as funções que criamos ao decorrer da atividade
	funcao inicio()
	{
		inscreverHospede()
	}

	funcao inscreverHospede()
	{
		inteiro indice = 0

		enquanto (indice < qtdMAXIMA)
		{
            limpa()
            escreva("### Inscrição de hóspede ", indice++, " ###\n")
            escreva("Nome do hóspede: ")
            leia(nomes[indice])
            escreva("Número do hóspede: ")
            leia(numeros[indice])
            escreva("Quantos dias irás ficar: ")
            leia(diasEstadia[indice])

		valorTotalEstadia[indice] = diasEstadia[indice] * VALOR_DIARIA

            indice = indice++

            escreva("\nHóspede inscrito com sucesso!\n")

            inteiro continuar
            escreva("Deseja inscrever outro hóspede? (1 - Sim / 0 - Não): ")
            leia(continuar)

            se (continuar == 0)
            {
                pare
            }
            se (indice == qtdMAXIMA)
        {
            escreva("\nLimite de hóspedes atingido.\n")
        }
            
		}
	}
}
		
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 686; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
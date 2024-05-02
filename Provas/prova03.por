/*
* 1-	O sistema de hotéis trabalhará intensamente com banco de dados, uma vez que são necessários registros variados 
*	– desde informações sobre hóspedes, questões de inventário, reservas e valores. 
*	Algumas situações podem ser simuladas ou preparadas por meio de algoritmos. 
*	Regras e funcionalidades previstas ao sistema lhe são passadas para serem desenvolvidas, testadas e 
*	ajustadas com o auxílio do Portugol.
*/

programa
{
// -> Valores constantes, ou seja, que não variam ao percorrer do código
    const inteiro qtdMAXIMA = 20
    const real VALOR_DIARIA = 230.0

    cadeia nomes[qtdMAXIMA]
    inteiro numeros[qtdMAXIMA], diasEstadia[qtdMAXIMA]
    real valorTotalEstadia[qtdMAXIMA]

    funcao inicio()
    {
        inteiro opcao

        enquanto (verdadeiro)
        {
            escreva("\n### Hotel NEO DOMINÓ ###\n")
            escreva("1 - Inscrever hóspede\n")
            escreva("2 - Ver detalhes de um hóspede\n")
            escreva("3 - Cancelar reserva\n")
            escreva("4 - Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

            escolha(opcao)
            {
                caso 1:
                    inscreverHospede()
                    pare
                caso 2:
                    verDetalhesHospede()
                    pare
                caso 3:
                    cancelarReserva()
                    pare
                caso 4:
                    pare
                caso contrario:
                    escreva("Opção inválida. Tente novamente.\n")
            }

            se (opcao == 4)
            {
            	tchau()
            	pare
            }
        }
    }
    
// Sistema de Banco de dados adicionado na Atividade anterior, podendo ser modificado o limite de hospedes como desejar.
    funcao inscreverHospede()
{
    inteiro indice = 1 // Inicializa o índice com 1

    enquanto (indice <= qtdMAXIMA)
    {
        limpa()
        escreva("### Inscrição de hóspede ", indice, " ###\n")
        escreva("Nome do hóspede: ")
        leia(nomes[indice])
        escreva("Número do hóspede: ", indice, "\n") 
        numeros[indice] = indice
        escreva("Quantos dias irás ficar: ")
        leia(diasEstadia[indice])

        indice = indice + 1

        escreva("\nHóspede inscrito com sucesso!\n")

        inteiro continuar
        escreva("Deseja inscrever outro hóspede? (1 - Sim / 0 - Não): ")
        leia(continuar)

        se (continuar == 0)
        {
            pare
        }
    }

    se (indice > qtdMAXIMA)
    {
        escreva("\nLimite de hóspedes atingido.\n")
    }
}


    funcao verDetalhesHospede()
    {
        inteiro numeroBusca
        inteiro encontrado = 0

        limpa()
        escreva("### Ver detalhes de um hóspede ###\n")
        escreva("Digite o número do hóspede: ")
        leia(numeroBusca)

        para (inteiro j = 0; j < qtdMAXIMA; j = j + 1)
        {
            se (numeros[j] == numeroBusca)
            {
                encontrado = 1
                escreva("\n### Detalhes do hóspede ", numeros[j], " ###\n")
                escreva("Nome: ", nomes[j], "\n")
                escreva("Dias de estadia: ", diasEstadia[j], "\n")
                escreva("Valor total a pagar: R$ ", valorTotalEstadia[j], "\n")
                pare
            }
        }

        se (encontrado == 0)
        {
            escreva("\nHóspede não encontrado.\n")
        }
    }

    funcao cancelarReserva()
    {
        inteiro numeroCancelamento
        inteiro encontrado = 0

        limpa()
        escreva("### Cancelar reserva de hóspede ###\n")
        escreva("Digite o número do hóspede para cancelar a reserva: ")
        leia(numeroCancelamento)

        para (inteiro i = 0; i < qtdMAXIMA; i = i + 1)
        {
            se (numeros[i] == numeroCancelamento)
            {
                encontrado = 1

                para (inteiro j = i; j < qtdMAXIMA - 1; j = j + 1)
                {
                    nomes[j] = nomes[j + 1]
                    numeros[j] = numeros[j + 1]
                    diasEstadia[j] = diasEstadia[j + 1]
                    valorTotalEstadia[j] = valorTotalEstadia[j + 1]
                }

                nomes[qtdMAXIMA - 1] = ""
                numeros[qtdMAXIMA - 1] = 0
                diasEstadia[qtdMAXIMA - 1] = 0
                valorTotalEstadia[qtdMAXIMA - 1] = 0.0
                
                escreva("\nReserva cancelada com sucesso.\n")
                pare
            }
        }

        se (encontrado == 0)
        {
            escreva("\nHóspede não encontrado.\n")
        }
    }

    funcao tchau()
    {
    	escreva("\nObrigado por nos visitar. Até breve!\n")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1446; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
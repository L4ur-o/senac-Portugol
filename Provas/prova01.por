programa
{
    const inteiro MAX_HOSPEDES = 20
    const real VALOR_DIARIA = 230.0

    cadeia nomes[MAX_HOSPEDES]
    inteiro diasEstadia[MAX_HOSPEDES]

    funcao inicio()
    {
        inteiro opcao

        enquanto (verdadeiro)
        {
            escreva("\n### MENU ###\n")
            escreva("1 - Inscrever hóspede\n")
            escreva("2 - Ver detalhes de um hóspede\n")
            escreva("3 - Sair\n")
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
                    pare
                caso contrario:
                    escreva("Opção inválida. Tente novamente.\n")
            }
        }
    }

    funcao inscreverHospede()
    {
        inteiro indice = 0

        enquanto (indice < MAX_HOSPEDES)
        {
            limpa()
            escreva("### Inscrição de hóspede ", indice + 1, " ###\n")
            escreva("Nome do hóspede: ")
            leia(nomes[indice])
            escreva("Quantos dias irá ficar: ")
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

        se (indice == MAX_HOSPEDES)
        {
            escreva("\nLimite de hóspedes atingido.\n")
        }
    }

    funcao verDetalhesHospede()
    {
        cadeia nomeBusca
        inteiro encontrado = 0

        limpa()
        escreva("### Ver detalhes de um hóspede ###\n")
        escreva("Digite o nome do hóspede: ")
        leia(nomeBusca)

        para (inteiro j = 0; j < MAX_HOSPEDES; j = j + 1)
        {
            se (nomes[j] == nomeBusca)
            {
                encontrado = 1
                escreva("\n### Detalhes de ", nomeBusca, " ###\n")
                escreva("Dias de estadia: ", diasEstadia[j], "\n")
                escreva("Valor total a pagar: R$ ", diasEstadia[j] * VALOR_DIARIA, "\n")
                pare
            }
        }

        se (encontrado == 0)
        {
            escreva("\nHóspede não encontrado.\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1544; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
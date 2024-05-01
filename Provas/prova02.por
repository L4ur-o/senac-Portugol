/*
* 2 - Você segue trabalhando no projeto do sistema para um hotel da cidade. 
* Uma das principais funcionalidades desse sistema é o controle de diárias e seus valores, 
* por isso, é útil montar alguns algoritmos para regras de negócio definidas para o sistema 
* que ajudarão o hotel a manter um processo de validação dentro dos seus processos.
*
*/

programa
{
    const inteiro qtdMAXIMA = 20
    const real VALOR_DIARIA = 230.0

    cadeia nomes[qtdMAXIMA]
    inteiro numeros[qtdMAXIMA], diasEstadia[qtdMAXIMA]

    
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
        }
    }

/*
* 1 -> Essa função armazenará no sistema um valor X represntado pela variável MAX_HOSPEDES;
* 
 */
      funcao inscreverHospede()
{
    inteiro indice = 1

    enquanto (indice <= qtdMAXIMA)
    {
        limpa()
        escreva("### Inscrição de hóspede ", indice, " ###\n")
        escreva("Nome do hóspede: ")
        leia(nomes[indice]) 
        escreva("Seu número de hóspede será: ", indice, "\n") 
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

/*
* 2 -> Esta função visa ver os detalhes de cada um dos hóspedes. Nesse caso, o valor da estadia (230.0) vezes a quantidade de dias que o memso irá ficar.
*
*/
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
                escreva("Valor total a pagar: R$ ", diasEstadia[j] * VALOR_DIARIA, "\n")
                pare
            }
        }

        se (encontrado == 0)
        {
            escreva("\nHóspede não encontrado.\n")
        }
    }
/*
* 3 -> Essa função por sua vez, permite o usuário procurar um hóspede e cancelar sua reserva.
*/
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
            }

            nomes[qtdMAXIMA - 1] = ""
            numeros[qtdMAXIMA - 1] = 0
            diasEstadia[qtdMAXIMA - 1] = 0
            
            escreva("\nReserva cancelada com sucesso.\n")
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
 * @POSICAO-CURSOR = 2289; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
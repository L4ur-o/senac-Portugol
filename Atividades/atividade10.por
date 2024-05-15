programa {

inteiro indiceHospede = 0
cadeia nomes[10]
cadeia cpfs[10]
inteiro dias[10]
real despesas[10]

funcao inicializarDespesas() {
    para (inteiro i = 0; i < 10; i = i + 1) {
        despesas[i] = 0.0
    }
}

funcao exibirMenu()
{
    escreva("----- Menu -----\n")
    escreva("1- Cadastrar Hospedes\n")
    escreva("2- Exibir Hospedes Cadastrados\n")
    escreva("3- Reservar Área de Lazer\n")
    escreva("4- Calcular total a pagar\n")
    escreva("0 - Sair\n")
    escreva("Escolha uma opção: ")
}

funcao cadastrarHospede()
{
    se (indiceHospede < 10)
    {
        escreva("Informe o nome do hospede: ")
        leia(nomes[indiceHospede])
        escreva("Informe o CPF do hospede: ")
        leia(cpfs[indiceHospede])
        escreva("Informe a quantidade de dias que ficará hospedado: ")
        leia(dias[indiceHospede])
        indiceHospede = indiceHospede + 1
        escreva("Hospede cadastrado com sucesso.\n\n")
    }
    senao
    {
        escreva("Máximo de hospedes cadastrados atingido.\n\n")
    }
}

funcao exibirHospedesCadastrados()
{
    se (indiceHospede == 0)
    {
        escreva("Nenhum hospede cadastrado.\n\n")
    }
    senao
    {
        escreva("----- Hospedes Cadastrados -----\n")
        para (inteiro i = 0; i < indiceHospede; i = i + 1)
        {
            escreva("Nome: ", nomes[i], "\n")
            escreva("CPF: ", cpfs[i], "\n")
            escreva("Dias hospedado: ", dias[i], "\n")
            escreva("Despesas: R$", despesas[i], "\n\n")
        }
    }
}

funcao reservarAreaLazer()
{
	
    escreva("Hospedes Cadastrados:\n")
    exibirHospedesCadastrados()
    inteiro indice
    escreva("Informe o índice do hospede: ")
    leia(indice)
    caracter opcao
    escreva("Escolha a área de lazer (A - Academia, S - Salão de Festas, R - Restaurante): ")
    leia(opcao)
    
    escolha (opcao)
    {
        caso 'A':
            despesas[indice] = despesas[indice] + 20
            escreva("Área de Lazer Academia reservada.\n\n")
        caso 'S':
            despesas[indice] = despesas[indice] + 50
            escreva("Área de Lazer Salão de Festas reservada.\n\n")
        caso 'R':
            despesas[indice] = despesas[indice] + 35
            escreva("Área de Lazer Restaurante reservada.\n\n")
        caso contrario:
            escreva("Opção inválida.\n\n")
    }
}

funcao calcularTotal()
{
   despesas[indice] + (dias[indice] * 100)
}

funcao calcularTotalAPagar()
{
    escreva("Hospedes Cadastrados:\n")
    exibirHospedesCadastrados()
    inteiro indice
    escreva("Informe o índice do hospede: ")
    leia(indice)
    real total = calcularTotal(indice)
    escreva("Total a pagar: R$", total, "\n\n")
}

funcao inicio()
{
    inteiro opcao
    inicializarDespesas()
    enquanto (verdadeiro)
    {
        exibirMenu()
        leia(opcao)

        escolha(opcao)
        {
            caso 1:
                cadastrarHospede()
                pare
            caso 2:
                exibirHospedesCadastrados()
                pare
            caso 3:
                reservarAreaLazer()
                pare
            caso 4:
                calcularTotalAPagar()
                pare
            caso 0:
                escreva("Obrigado por utilizar nosso sistema. Até mais!\n")
            caso contrario:
                escreva("Opção inválida. Por favor, escolha novamente.\n\n")
        }
    }
}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 54; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
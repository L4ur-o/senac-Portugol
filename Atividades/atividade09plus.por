programa 
{
	cadeia hospedes[7]
	inteiro opcao
	cadeia nome
	logico sair = falso // Variável para controlar a saída do loop

	funcao inicio() 
	{
    	
		enquanto (nao sair)
		{
			exibirMenu()
			leia(opcao)

			escolha(opcao) 
			{
				caso 1:
					cadastrarHospede()
					pare
					
				caso 2:
					pesquisarHospede()
					pare
					
				caso 3:
					excluirHospede()

				caso 4: 
					sair = verdadeiro 
					pare            // redundância
				caso contrario:
					escreva("Opção inválida. Por favor, escolha novamente.\n\n")
					pare // break
			}
		}
	}

	funcao exibirMenu() 
	{
		escreva("\n----- Menu -----\n")
		escreva("1- Cadastrar\n")
		escreva("2- Pesquisar\n")
		escreva("3- Exclusão de hóspede\n")
		escreva("4 - Sair\n")
		escreva("Escolha uma opção: ")
	}

	funcao cadastrarHospede() // 1
	{
		inteiro indice = 0
        
        // Encontrar o próximo índice disponível para cadastro
		enquanto (indice < 7 e hospedes[indice] != "")
		{
			indice = indice + 1
		}

		se (indice < 7)
		{
			escreva("Informe o nome do hóspede: ")
			leia(nome)
			hospedes[indice] = nome
			escreva("Hóspede ", nome, " cadastrado com sucesso.\n\n")
		} 
		senao
		{
			escreva("\n\nMáximo de cadastros atingido.\n\n")
		}
	}

	funcao pesquisarHospede()
	{
		escreva("Informe o nome do hóspede a pesquisar: ")
		leia(nome)

		logico encontrado = falso

        // Percorrer o vetor de hóspedes para pesquisar o nome
		para (inteiro i = 0; i < 7; i++)
		{
            // Comparar o nome informado com cada nome no vetor
			se (hospedes[i] == nome)
			{
			escreva("Hóspede ", nome, " encontrado no índice ", i + 1, ".\n\n")
			encontrado = verdadeiro
			}
		}

        // Se o nome não foi encontrado, exibir mensagem correspondente
		se (nao encontrado)
		{
			escreva("Hóspede ", nome, " não encontrado.\n\n")
		}
	}

	funcao excluirHospede(/**void**/)
	{
		logico continuar = verdadeiro
		enquanto (continuar)
		{
			escreva("Informe o nome do hóspede que desejas excluir: ")
			leia(nome)

			logico achado = falso

			para (inteiro i = 0; i < 7; i++) // Percorre
			{
				se(hospedes[i] == nome) // fulano existe?
				{
					hospedes[i] = "" // "fulano" -> ""
					escreva("O hóspede ", nome, " foi excluido com sucesso.\n\n")
					achado = verdadeiro
					pare
				}
			}

			se(nao achado)
			{
			escreva("O hóspede ", nome, " não foi encontrado.\n\n")
			}

			escreva("Deseja excluir outro hóspede? (S/N): ")
			cadeia resposta
			leia(resposta)

			//Verificar se o valor  é correto
			enquanto(resposta != "S" e resposta !="s" e resposta !="N" e resposta !="n")
			{
				escreva("Opção inválida, digite novamente (S/N): ")
				leia(resposta)
			}

			se (resposta == "N" ou resposta == "n")
			{
				exibirMenu()
			}
		}
	}
	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2726; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
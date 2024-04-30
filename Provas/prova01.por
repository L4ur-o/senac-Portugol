/*
* 1 - Você está trabalhando em um sistema para um hotel da cidade.
* Esse sistema registrará as reservas e o controle das hospedagens, além de outros aspectos como o uso de áreas comuns ou o aluguel de espaços de evento.
* O projeto está em estágio inicial e foi solicitado à equipe, a partir de alguns requisitos importantes, que monte algoritmos, os quais posteriormente 
* possam ou não ser convertidos em funcionalidades do sistema.
* Sua tarefa é utilizar o Portugol para montar alguns desses algoritmos.
*/

programa
{
/*	const inteiro hospedesMAX = 20  */
// Variaveis globais
	cadeia nome // Array
	real resultado = 230.0
	inteiro estadia
/*
* 1 -> Essa função armazenará no sistema um valor X represntado pela variável hospedesMAX;
* 
*/

	funcao inicio()
    {
        inteiro opcao

        enquanto (verdadeiro)
        {
            escreva("\n### Hotel NEO DOMINÓ ###\n")
            escreva("1 - Inscrever hóspede\n")
/*          escreva("2 - Ver detalhes de um hóspede\n")
            escreva("3 - Cancelar reserva\n") */
            escreva("4 - Sair\n")
            escreva("Escolha uma opção: ")
            leia(opcao)

            escolha(opcao)
            {
                caso 1:
                    inscreverHospede()
                    pare
/*              caso 2:
                    verDetalhesHospede()
                    pare
                caso 3:
                    cancelarReserva()
                    pare */
                caso 4:
                saida()
                	pare
                caso contrario:
                    escreva("Opção inválida. Tente novamente.\n")
            }
        }
    }

    funcao inscreverHospede()
    {
    		//Entrada de dados

    		escreva("Digite seu nome: ")
    		leia(nome)

    		escreva("Quantos dias pretende ficar aqui sr(a) ", nome, "? ")
    		leia(estadia)

    		escreva("Ótimo, sr(a) ", nome, ". Você pagará o total de: R$", resultado * estadia,  " Reais\n")
    		escreva("Aceitamos todos os cartões e dividimos em até 6x sem juros \n")
    }

	funcao saida()
	{
		escreva("Agradecemos sua visita. Volte mais vezes...")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2063; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
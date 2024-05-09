/* 
Utilizar um vetor de 10 posições;
Cada posição conrresponderá a um quarto de um hotel;
O sistema deve perguntar ao usuário qual número de quarto ele deseja visitar. (sendo de 1 ao 10. 
Então altere o valor informado pelo usuário para manipular o vetor corretamente);
Após isso, o sistema deve perguntar ao usuário se o quarto escolhido está, Livre "L" ou Ocupado "O";
E o sistema registrará essa escolha para o quarto em questão;
O laço, por sua vez, irá percorrer por todo o vetor infinitamente até o usuário decidir sair do loop;

Regras para o código funcionar bem:

1º Se o quarto já estiver livre ("L") e o usuário digita "L" na escolha deve ser exibida a
mensagem: “O quarto ", (numero do quarto), " já está livre.” e voltar para a escolha de outro quarto;

2º Se o quarto está livre ("L") e o usuário digita "O", deve ser exibida a
mensagem “O quarto ", (numero do quarto), " foi ocupado com sucesso.”, e o valor do vetor deve ser alterado de "L" para "O";

3º Se o quarto estiver ocupado e o usuário digitar L deve ser exibida a
mensagem “O quarto ", (numero do quarto), " foi liberado com sucesso.” e o valor do vetor deve ser alterado de "O" para "L";

4º Se o quarto estiver ocupado ("O") e o usuário digitar "O" deve ser exibida a
mensagem “O quarto ", (numero do quarto), " já está ocupado.”, e o valor do vetor deve ser alterado de "O" para "L"




*/
programa 
{
	inteiro quartos[10]
	inteiro numero_quarto
	cadeia estado
	cadeia continuar
	logico sair = falso // Variável para controlar a saída do loop
	
	funcao inicio() 
	{

		para(inteiro i = 0; i < 10; i++) 
		{
			quartos[i] = 0 
		}
		
		loopinho()

		exibirQuartos()
	}
	
	funcao loopinho()
	{
		enquanto (nao sair)
		{
			escreva("Informe o número do quarto (de 1 a 10): ")
			leia(numero_quarto)
			
			enquanto (numero_quarto < 1 ou numero_quarto > 10) 
			{
				escreva("Número de quarto inválido. Redigite o número certo de 1 a 10: ")
				leia(numero_quarto)
			}
			
			inteiro indice = numero_quarto - 1
			
			escreva("Informe o estado do quarto (L para livre, O para ocupado): ")
			leia(estado)
			
			se (estado == "L" ou estado == "l") 
			{
				se (quartos[indice] == 0) 
				{
					escreva("O quarto ", numero_quarto, " já está livre.\n")
				} 
				senao 
				{
					quartos[indice] = 0
					escreva("O quarto ", numero_quarto, " foi liberado com sucesso.\n")
				}
			} 
			senao se (estado == "O" ou estado == "o") 
			{
				se (quartos[indice] == 1) 
				{
					escreva("O quarto ", numero_quarto, " já está ocupado.\n")
				} 
				senao 
				{
					quartos[indice] = 1
					escreva("O quarto ", numero_quarto, " foi ocupado com sucesso.\n")
				}
			} 
			senao 
			{
				escreva("Estado do quarto inválido.\n")
			}
			
			escreva("Deseja continuar?\nS para sim ou Qualquer outra tecla para sair: ")
			leia(continuar)
			
			se (continuar != "S" e continuar != "s") 
			{
				sair = verdadeiro
			}
		}
	}

	funcao exibirQuartos()
	{
		escreva("Estado dos quartos:\n")
		para(inteiro i = 0; i < 10; i++) 
		{
			se (quartos[i] == 0) 
			{
				escreva("Quarto ", i + 1, ": Livre\n")
			} 
			senao 
			{
				escreva("Quarto ", i + 1, ": Ocupado\n")
			}
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2882; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */

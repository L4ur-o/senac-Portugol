/**
  No restaurante do hotel é oferecida uma cortesia para os hóspedes. Em toda
  refeição o hotel paga R$ 30,99 reais do valor gasto pelos hóspedes. Caso o
  hóspede gaste menos que R$ 30,99 ou exatamente esse valor ele não precisa
  pagar nada. Caso o valor da mesa seja maior que R$ 30,99 o hóspede precisa
  pagar a diferença (o valor da refeição descontando a cortesia). No sistema
  primeiro precisamos solicitar para o usuário e armazenar o valor de 4 mesas e
  guardar dentro de um vetor esses valores. Posteriormente precisamos verificar
  os valores armazenados para retornar para o usuário se a mesa precisa pagar
  ou não algum valor. Caso nenhum valor precise ser pago deve ser retornada a
  mensagem "Nada a pagar!". Caso a mesa precise pagar algum valor deve ser
  retornado "A mesa x precisa pagar: " e logo em seguida ser retornado quanto a
  mesa deve.
 **/

programa {
  real mesas[4]

  funcao inicio() 
  {
    loopinhoDoloppinho()
    
    para (inteiro i = 0; i < 4; i++) 
    {
      escreva("[", mesas[i], "] || ")
    }

    escreva("\nValores a serem pagos pelos hóspedes:\n")
    
    para (inteiro i = 0; i < 4; i++) 
    {
      real valorAPagar = mesas[i] - 30.99 // (o valor da refeição descontando a cortesia)
      se (valorAPagar > 0)
    {
      escreva("Mesa ", i + 1, ": R$", valorAPagar, "\n")

    } senao se (valorAPagar < 0) 
    {
      escreva("Mesa ", i + 1, ": R$0.00 (Cortesia da casa)\n")
    } senao // != < != > - - - =
    {
      escreva("Mesa ", i + 1, ": R$0.00 (Nada a pagar)\n")
    }
    }
  }

// Entrada de Dados
  funcao loopinhoDoloppinho()
  {
    para (inteiro i = 0; i < 4; i++) 
    {
      faca 
      {
        escreva("Digite o valor da mesa ", i + 1, ": ")
        leia(mesas[i])
        se (mesas[i] <= 0)
        {
        escreva("Número inválido. Por favor, insira um valor válido.\n")
        }
      } enquanto (mesas[i] <= 0)
    }
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 891; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
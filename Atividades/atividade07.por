programa {
  inteiro mesas[4]

  funcao inicio() 
  {
    loopinho()
    
    para (inteiro i = 0; i < 4; i++) 
    {
      escreva(mesas[i], " ")
    }

    escreva("\n\nValores a serem pagos pelos hóspedes:\n")
    
    para (inteiro i = 0; i < 4; i++) 
    {
      real valorAPagar = mesas[i] - 30.99
      se (valorAPagar > 0)
    {
      escreva("Mesa ", i + 1, ": R$", valorAPagar, "\n")

    } senao se (valorAPagar < 0) 
    {
      escreva("Mesa ", i + 1, ": R$0.00 (Cortesia da casa)\n")
    } senao 
    {
      escreva("Mesa ", i + 1, ": R$0.00 (Nada a pagar)\n")
    }
    }
  }

  funcao loopinho()
  {
    para (inteiro i = 0; i < 4; i++) 
    {
      faca 
      {
        escreva("Digite o valor da mesa ", i + 1, ": ")
        leia(mesas[i])
        se (mesas[i] < 0)
        {
        escreva("Número inválido. Por favor, insira um valor válido.\n")
        }
      } enquanto (mesas[i] < 0)
    }
  }
}

programa {
  real vlr_diaria
  inteiro qtd_dias

  funcao inicio() 
  {
    //  LOOPS criados em função de: CASO um dos números seja negativo o código ficará preso naquele loop até ele não mais exceder as prerrogativas propostas  
    
    faca 
    {
      escreva("Digite o valor da diária: ")
      leia(vlr_diaria)

      se (vlr_diaria < 0) 
      {
        escreva(" 'Ihh rapaz, tá certo isso?'. O valor (R$) não pode ser negativo! (E você digitou o ", vlr_diaria, ") Corrija.\n")
      }
    } enquanto (vlr_diaria < 0)

    faca 
    {
      escreva("Digite a quantidade de dias de hospedagem: ")
      leia(qtd_dias)

      se (qtd_dias < 0) {
        escreva(" 'Já vistes alguém com ", qtd_dias ," anos de idade?'. Sendo assim, o valor de dias não pode ser negativo! (E você digitou o ", qtd_dias, ") Corrija.\n")
      }
    } enquanto (qtd_dias < 0)

    calculando()
  }
  
  funcao calculando() 
  {
    real vlr_total
    vlr_total = vlr_diaria * qtd_dias
    escreva("O valor total da estadia será de: R$ ", vlr_total)
  }

}


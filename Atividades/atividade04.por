programa {

/*
*
*
*/

  real vlr_diaria
  inteiro qtd_dias

  funcao inicio() 
  {
    
    //  LOOPS criados em função de: CASO um dos números seja negativo o código ficará preso naquele loop até ele não mais exceder as prerrogativas propostas  
    faca 
    {
      escreva("Digite o valor da diária: ")
      leia(vlr_diaria)

      se (vlr_diaria < 0 ou vlr_diaria == 0) 
      {
        escreva("'Ihh rapaz, tá certo isso?'. O valor (R$) não pode ser negativo ou zero! (E você digitou o ", vlr_diaria, ") Corrija.\n")
      }
    } enquanto (vlr_diaria < 0 ou vlr_diaria == 0)
    

    faca 
    {
      escreva("Digite a quantidade de dias de hospedagem: ")
      leia(qtd_dias)

      se (qtd_dias < 0 ou qtd_dias == 0) 
      {
        escreva(qtd_dias ,"??, o valor de dias não pode ser negativo ou 0, bananão! Corrija.\n")
      }
    } enquanto (qtd_dias < 0 ou qtd_dias == 0)

    calculando()
  }
  
  
  funcao calculando() 
  {
    real vlr_total
    vlr_total = vlr_diaria * qtd_dias
    escreva("O valor total da estadia será de: R$ ", vlr_total)
  }

}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 21; 
 * @DOBRAMENTO-CODIGO = [41];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
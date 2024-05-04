programa {

  real vlr_diaria
  inteiro gratuidades
  inteiro meias
  real vlr_total

  funcao inicio() 
  {
    vlr_total = 0
    gratuidades = 0
    meias = 0
    
    escreva("Digite o valor padrão da diária: ")
    leia(vlr_diaria)

    caracter continuar = 'S'
    enquanto (continuar == 'S') {
      cadeia nome_hospede
      inteiro idade_hospede
      
      limpa()
      escreva("Digite o nome do hóspede: ")
      leia(nome_hospede)
      
      escreva("Digite a idade do hóspede: ")
      leia(idade_hospede)
      
      se (idade_hospede <= 4) {
        escreva(nome_hospede, " pagará R$ 0,00 (Gratuidade).\n")
        gratuidades = gratuidades + 1
      } senao se (idade_hospede >= 80) {
        escreva(nome_hospede, " pagará meia: R$", vlr_diaria / 2, ".\n" )
        meias = meias + 1
        vlr_total = vlr_total + (vlr_diaria / 2)
      } senao {
        vlr_total = vlr_total + vlr_diaria
      }
      
      escreva("Deseja continuar? (S/N): ")
      leia(continuar)
    }
    
    escreva("Temos: \n", gratuidades, " gratuidade(s)\n")
    escreva(meias, " meia(s) hospedagen(s)\n")
    escreva("Totalizando: R$", vlr_total, ".\n")
  }
}

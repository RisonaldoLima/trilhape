algoritmo "Agência de Viagem - TRILHA-PE"
//Usando conceitos de programação estruturada (Vetor),
//criar em pseudocódigo um menu para simular um cadastro
//para uma agência de viagens com as seguintes funções: cadastro
//de cliente e cadastro de destino, criar também uma consulta para
//cada estrutura de dados.


var
   nomes: vetor[0..10] de caractere
   cpf: vetor[0..10] de inteiro
   destino: vetor[0..10] de caractere
   s: inteiro

procedimento cadastrar_cliente()
var
   i: inteiro
   nome: caractere

inicio
   se s = 10 entao
      escreval("Limite de cadastro atingido")
   senao
      i <- 0
      enquanto (i < 10) e (nomes[i] <> "") faca
         i <- i + 1
      fimenquanto

      se i < 10 entao
         escreval("DIGITE SEUS DADOS")
         escreval()
         escreva("-> Nome: ")
         leia(nome)
         nomes[i] <- nome

         escreva("-> CPF (Apenas os números e sem os pontos): ")
         leia(cpf[i])

         escreva("-> Destino: ")
         leia(destino[i])

         escreval()

         s <- s + 1
      fimse
   fimse

   voltar_menu()
fimprocedimento

procedimento voltar_menu()
var
   op: caractere
inicio
   escreva("Voltar para o menu? ")
   leia(op)

   se op = "sim" entao
      limpatela
      inicializa()
   senao
      limpatela
   fimse
fimprocedimento

procedimento buscar_cliente()
var
   i: inteiro
   nome: caractere

inicio
   escreval("PARA BUSCAR UM CADASTRO...")
   escreval()
   escreva("Informe o nome do(a) cliente: ")
   leia(nome)
   escreval()

   i <- 0
   enquanto i < 10 faca
      se nomes[i] = nome entao
         escreval("-> Nome: ", nomes[i])
         escreval("-> CPF: ", cpf[i])
         escreval("-> Destino: ", destino[i])
         escreval()
      fimse
      i <- i + 1
   fimenquanto

   se i = 10 entao
      escreval("Cliente Cadastrado!")
      escreval()
   fimse

   Voltar_menu2()
fimprocedimento

procedimento voltar_menu2()
var
   op: caractere
inicio
   escreva("Voltar para o Menu? ")
   leia(op)

   se op = "sim" entao
      limpatela
      inicializa()
   fimse
fimprocedimento

procedimento inicializa()
var
   op: caracter

inicio
   enquanto op <> "3" faca
      escreval("-- TRILHA-PE --")
      escreval()
      escreval("------------------- Menu -------------------")
      escreval("------- Escolha uma das opções abaixo: ------")
      escreval()
      escreval("(1) Cadastre o cliente")
      escreval("(2) Verifique suas informações")
      escreval("(3) Sair")
      escreval()

      escreva("Opção: ")
      leia(op)

      se op = "1" entao
         limpatela
         cadastrar_cliente()
      senao
         se op = "2" entao
            limpatela
            buscar_cliente()
         fimse
      fimse
   fimenquanto

fimprocedimento

inicio
   s <- 0
   inicializa()
fimalgoritmo

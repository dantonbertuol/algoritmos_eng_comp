
algoritmo "TrabalhoAvaliativo"
// Função :
// Autor : Danton Bertuol
// Data : 09/06/2015
// Seção de Declarações

var
VetA:vetor [1..13] de inteiro
VetB:vetor [1..13] de caractere
opcao,i,k:inteiro

//20 implmentações de função
//Inicio da Funcao
funcao menu ():inteiro
var
inicio
escreval (" _________________________________________________________________________ ")
escreval ("| 0 - Sair                                                                |")
escreval ("| 1 (i) Imprimir o array                                                  |")
escreval ("| 2 (i) Inicializar o array a partir de valores do usuário                |")
escreval ("| 3 (i) Imprimir um elemento a partir de seu índice                       |")
escreval ("| 4 (i) Imprimir os números pares contidos no array                       |")
escreval ("| 5 (i) Imprimir a média aritmética dos valores do array                  |")
escreval ("| 6 (i) Substituir todas as ocorrências de um valor por outro do usuário  |")
escreval ("| 7 (i) Elevar cada elemento do array ao cubo                             |")
escreval ("| 8 (i) Imprimir os elementos que são resultados de uma potência de 3     |")
escreval ("| 9 (i) Deslocar os elementos duas casas para a direita                   |")
escreval ("| 10 (i) Imprimir a quantidade de dígitos de cada elemento do array       |")
escreval ("| 11 (c) Imprimir o array                                                 |")
escreval ("| 12 (c) Inicializar o array a partir de valores do usuário               |")
escreval ("| 13 (c) Imprimir o número de ocorrências de um determinado caractere     |")
escreval ("| 14 (c) Imprimir as vogais presentes no array                            |")
escreval ("| 15 (c) Imprimir as consoantes presentes no array                        |")
escreval ("| 16 (c) Imprimir os caracteres numéricos (0-9) presentes no array        |")
escreval ("| 17 (c) Inverter o tamanho da caixa da letra (a-z, A-Z) do array         |")
escreval ("| 18 (c) Informar se o array está balanceado                              |")
escreval ("| 19 (c) Informar se o array possui os mesmos valores de trás pra frente  |")
escreval ("| 20 (c) Informar o caractere que possui o maior número de ocorrências    |")
escreval ("|_________________________________________________________________________|")
escreval
fimfuncao

//funcao00
funcao opcao0 ():inteiro
var
inicio
      escreva ("Tchau Tchau")
             interrompa
fimfuncao


//funcao01
funcao opcao1 ():inteiro
var
inicio
              escreval
              escreva ("Seu array atual é: ")
                      para i de 1 ate 13 faca
                           escreva (" ",VetA[i])
                      fimpara
              escreval
fimfuncao

//funcao02
funcao opcao2 ():inteiro
var
inicio
             escreval
                  para i de 1 ate 13 faca
                      escreva ("VetA[",i," ]=")
                         leia (VetA[i])
                  fimpara
             escreval
fimfuncao

//funcao03
funcao opcao3 ():inteiro
var
inicio
              escreval
              escreva ("Digite o indice do elemento que deseja ver: ")
                     leia (i)
              escreva ("VetA[",i," ]=",VetA[i])
              escreval
fimfuncao

//funcao04
funcao opcao4 ():inteiro
var
inicio
            escreval
               escreva ("Numeros pares contidos no array: ")
               para i de 1 ate 13 faca
                    //condicional simples
                  se (VetA[i] mod 2 = 0) entao
                  escreva (VetA[i])
                  fimse
               fimpara
            escreval
fimfuncao

//funcao05
funcao opcao5 ():inteiro
var
x:inteiro
inicio
            escreval
                    //laço para-até-faça
                para i de 1 ate 13 faca
                  x<-VetA[i]+x
                fimpara
                escreva ("A media aritmetica dos valores do array é: ",x/13)
            escreval
fimfuncao

//funcao06
funcao opcao6 ():inteiro
var
y,x,s:inteiro
inicio
             escreval
             s<-0
             escreva ("Digite o valor que deseja substituir: ")
              leia (y)
             escreva ("Digite o novo valor: ")
              leia (x)
             escreval
             para i de 1 ate 13 faca
                  se (VetA[i]=y) entao
                     VetA[i]<-x
                     s<-s+1
                  fimse
             fimpara
                    se (s=0) entao
                    escreva ("O valor digitado nao esta presente no array")
                  fimse
             escreval
fimfuncao

//funcao07
funcao opcao7 ():inteiro
var
inicio
               para i de 1 ate 13 faca
                  VetA[i]<-VetA[i]*VetA[i]*VetA[i]
               fimpara
fimfuncao

//funcao08
funcao opcao8():inteiro
var
j,s:inteiro
inicio
      escreval
      escreva ("Potencias de 3 contidas no array: ")
                  para i de 1 ate 13 faca
                       para j de 0 ate Abs(VetA[i]) faca
                            se (Abs(VetA[i])=(j^3)) entao
                               escreva (VetA[i])
                               s<-s+1
                               interrompa
                             senao
                             se (Abs(VetA[i])<(j^3)) entao
                                interrompa
                            fimse
                            fimse
                       fimpara
                  fimpara
                  se (s=0) entao
                  escreva ("Nenhum numero e resultado de uma potencia de 3")
                  fimse
                  escreval

fimfuncao

//funcao09
funcao opcao9 ():inteiro
var
VetA9:vetor [1..13] de inteiro
inicio
escreval
        para i de 1 ate 13 faca
            VetA9[i] <- VetA[i]
        fimpara
        para i de 1 ate 13 faca
            se (i = 1) entao
                VetA[i] <- VetA9[12]
            senao
            //estrutura condicional composta
            se (i = 2) entao
                VetA[i] <- VetA9[13]
            senao
                VetA[i] <- VetA9[i - 2]
            fimse
              fimse
         fimpara
             escreval
fimfuncao

//funcao10
funcao opcao10 ():inteiro
var
contador:inteiro
cont:real
inicio
           escreval
             para i de 1 ate 13 faca
                 contador<-0
                 cont<-VetA[i]
                    se (cont=0) entao
                       contador<-contador+1
                       escreva (contador)
                    senao
               enquanto (cont>=1) faca
                        cont<-cont/10
                        contador<-contador+1
               fimenquanto

               escreva (contador)
               fimse
               fimpara
               escreval

fimfuncao


//funcao11
funcao opcao11 ():inteiro
var
inicio
             escreval
             escreva ("Seu array atual é: ")
             para i de 1 ate 13 faca
                  escreva (" ",VetB[i])
             fimpara
             escreval
fimfuncao

//funcao12
funcao opcao12 ():inteiro
var
inicio
             escreval
             para i de 1 ate 13 faca
                  escreva ("VetB[",i," ]=")
                  leia (VetB[i])
             fimpara
             escreval
fimfuncao

//funcao13
funcao opcao13 ():inteiro
var
x:inteiro
c:caractere
inicio
             escreval
                     escreva ("Digite o caractere que deseja verificar o numero de ocorrencias: ")
                     leia (c)
             para i de 1 ate 13 faca
                  se (VetB[i]=c) entao
                     x<-x+1
                  fimse
             fimpara
             escreva ("O caracter '",c,"' se repete",x," vezes no array")
             escreval
fimfuncao

//funcao14
funcao opcao14 ():inteiro
var
s:inteiro
inicio
               s<-0
             escreval
             escreva ("Vogais presentes no array: ")
             para i de 1 ate 13 faca
                  se (VetB[i]="a") ou (VetB[i]="e") ou (VetB[i]="i") ou (VetB[i]="o") ou (VetB[i]="u") ou (VetB[i]="A") ou (VetB[i]="E") ou (VetB[i]="I") ou (VetB[i]="O") ou (VetB[i]="U") entao
                  escreva (VetB[i])
                  s<-s+1
                  fimse
             fimpara
             se (s=0) entao
             escreva ("Nenhuma vogal presente no array")
             fimse
             escreval
fimfuncao

//funcao15
funcao opcao15 ():inteiro
var
s:inteiro
inicio
         s<-0
             escreval
             escreva ("Consoantes presentes no array: ")
             para i de 1 ate 13 faca
                  //estrutura condicional aninhada
              se (((Asc(VetB[i]) >= 65) e (Asc(VetB[i]) <= 90)) ou ((Asc(VetB[i]) >= 97) e (Asc(VetB[i]) <= 122))) entao
                         se((VetB[i] <> "a") e (VetB[i] <> "e") e (VetB[i] <> "i") e (VetB[i] <> "o") e (VetB[i] <> "u") e (VetB[i] <> "A") e (VetB[i] <> "E") e (VetB[i] <> "I") e (VetB[i] <> "O") e (VetB[i] <> "U")) entao
                                       escreva(VetB[i])
                                       s<-s+1
                         fimse
                         fimse
              fimpara
              se (s=0) entao
              escreva ("Nenhuma consoante presente no array")
              fimse
              escreval
fimfuncao

//funcao16
funcao opcao16 ():inteiro
var
s:inteiro
inicio
           s<-0
             escreval
             escreva ("Caracteres numerais presentes no vetor: ")
             para i de 1 ate 13 faca
                  se (VetB[i]="0") ou (VetB[i]="1") ou (VetB[i]="2") ou (VetB[i]="3") ou (VetB[i]="4") ou (VetB[i]="5") ou (VetB[i]="6") ou (VetB[i]="7") ou (VetB[i]="8") ou (VetB[i]="9") entao
                     escreva (VetB[i])
                     s<-s+1
                     fimse
             fimpara
             se (s=0) entao
             escreva ("Nao existem caracteres numerais no array")
             fimse
             escreval
fimfuncao

//funcao17
funcao opcao17 ():inteiro
var
m,n:inteiro
inicio
             escreval
             para i de 1 ate 13 faca
                  se (Asc(VetB[i])>=65) e (Asc(VetB[i])<=90) entao
                     m<-Asc(VetB[i])+32
                     n<-10
                  fimse
                  se ((Asc(VetB[i])>=97) e (Asc(VetB[i])<=122)) entao
                     m <- Asc(VetB[i]) - 32
                          n <- 10
                  fimse
                  se (n=10) entao
                  VetB[i]<-carac(m)
                  fimse
             fimpara
             escreval
fimfuncao

//funcao18
funcao opcao18 ():inteiro
var
ladoA,ladoB:inteiro
inicio
ladoA<-0
ladoB<-0
             escreval
             para i de 1 ate 13 faca
                  se ((i >= 1) e (i <= 6)) entao
                      se (Asc(VetB[i]) >= 65) e (Asc(VetB[i]) <= 90) ou (Asc(VetB[i]) >= 97) e (Asc(VetB[i]) <= 122) entao
                          ladoA<-ladoA + 1
                             fimse
                          fimse
                  se ((i >= 8) e (i <= 13)) entao
                      se ((Asc(VetB[i]) >= 65) e (Asc(VetB[i]) <= 90) ou (Asc(VetB[i]) >= 97) e (Asc(VetB[i]) <= 122)) entao
                         ladoB<-ladoB + 1
                             fimse
                          fimse
                     fimpara
                     se (ladoA = ladoB) entao
                        escreval ("O array está balanceado!")
                     senao
                          escreval ("O array não está balanceado: a primeira metade tem ",ladoA," letras e a segunda tem ",ladoB," letras")
                     fimse
             escreval

fimfuncao

//funcao19
funcao opcao19 ():inteiro
var

inicio
             escreval
             se (Asc(VetB[1])=Asc(VetB[13])) e (Asc(VetB[2])=Asc(VetB[12])) e (Asc(VetB[3])=Asc(VetB[11])) e (Asc(VetB[4])=Asc(VetB[10])) e (Asc(VetB[5])=Asc(VetB[9])) e (Asc(VetB[6])=Asc(VetB[8])) entao
                escreva (" O array possui os mesmos valores de tras para frente. ")
             senao
                  escreva ("O array não possui os mesmos valores de tras para frente.")
             fimse
             escreval
fimfuncao

//funcao20
funcao opcao20 ():inteiro
var
x,y,j:inteiro
letra:caracter
inicio
              escreval
            y <- 0
          para i de 1 ate 13 faca
               x <- 0
          para j de i ate 13 faca
		         se(i <> j) entao
			           se(vetB[i] = vetB[j]) entao
				                   x <- x + 1
                    fimse
               fimse
      	fimpara
	             se(x > y) entao
		               y <- x
		               letra <- vetB[i]
                fimse
       fimpara
              se(y = 0) entao
	           escreval("Não há caracteres com mais de uma ocorrência")
              senao
	           escreva("O caractere com mais ocorrências é: ", letra, " com ", y+1, " ocorrências.")
              fimse
              escreval
fimfuncao

inicio
opcao<-2
i<-1
//estrutura de repetição enquanto-faca
enquanto (i<14) faca
     VetA[i]<-0
     i<-i+1
fimenquanto
i<-1
//estrutura de repetição repita-ate
repita
     VetB[i]<-"A"
     i <- i + 1
ate (i > 13)

enquanto (opcao>=1) e (opcao<=20) faca
         opcao <- menu()
         escreva ("Selecione uma opção: ")
         leia (opcao)
         se (opcao<0) ou (opcao >20) entao
            escreval ("Opção invalida!")
                     opcao<-menu ()
                     escreva ("Selecione uma opção: ")
                     leia (opcao)
            fimse

//seleçao multipla (escolha-caso)
escolha opcao

        caso (0)
        k<-opcao0 ()

        caso (1)
        k<-opcao1 ()
             
        caso (2)
        k<-opcao2 ()
             
        caso (3)
        k<-opcao3 ()
             
        caso (4)
        k<-opcao4 ()
             
        caso (5)
        k<-opcao5 ()
            
        caso (6)
        k<-opcao6 ()
             
        caso (7)
        k<-opcao7 ()
             
        caso (8)
        k<-opcao8 ()

        caso (9)
        k<-opcao9 ()
             
        caso (10)
        k<-opcao10 ()

        caso (11)
        k<-opcao11 ()
             
        caso (12)
        k<-opcao12 ()
             
        caso (13)
        k<-opcao13 ()
             
        caso (14)
        k<-opcao14 ()
             
        caso (15)
        k<-opcao15 ()

        caso (16)
        k<-opcao16 ()
             
        caso (17)
        k<-opcao17 ()
                  
        caso (18)
        k<-opcao18 ()
        
        caso (19)
        k<-opcao19 ()
        
        caso (20)
        k<-opcao20 ()

        fimescolha
        fimenquanto
        fimalgoritmo

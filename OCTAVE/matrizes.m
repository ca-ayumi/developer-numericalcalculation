A=[2,3;4,5]
a=[2 3 4; 5 6 7]
B=[2 2; 1 2]
a' #Transposta
A' #Transposta

#Inversa de matriz deve ser quadrada
inv (A)

#Determinante de matriz deve ser quadrada
det (A)
det (a)

#Tamanho de matriz ##para cálculo de determinante##
size (A)

#Vetor
V =[0 1 2 3 4]

#Multiplicação da inversa
inv(A)*a

A\a

#Multiplicação
A*B

#Multiplicação ponto a ponto
A.*B

#Potencia
A^2

#Valor da quarta posição do vetor
V(4)

#Valor da segunda linha e segunda coluna matriz
a(2,2)

#Acessar trechos de matrizes ##primeira linha e todas as colunas 
a(1,:) 

#Concatenar do lado
c=[A a]

#Concatenar abaixo
c=[A;a]

#ESCALONAR
D=[2 -5 9 3; 1 -2 4 5; 2 -3 5 7]
rref (D)




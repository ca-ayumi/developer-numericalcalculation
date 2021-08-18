% NOME: CAMILA AYUMI PENTEADO
% RA: 1806360
% DADOS: N = numero inteiro
% RESULTADOS: Calculo do fatorial de N
% CONDICOES DE FUNCIONAMENTO: N < 13 (devido ao tamanho da variavel)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc
%%%%%%%%%%%%%%(A)%%%%%%%%%%%%%%%%%
N = 12;
fat=int32(ones(1,N));

for j=1:N
  for i=1:j
    fat(j)=fat(j)*i;
  end 
end

fat
%%%%%%%%%%%%%%(B)%%%%%%%%%%%%%%%%%

%Para um inteiro de 32 bits, o maior N para qual meu programa dá resultados 
%confiáveis é 12.

%%%%%%%%%%%%%%(C)%%%%%%%%%%%%%%%%%
plot(1:N,fat)
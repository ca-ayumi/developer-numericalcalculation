% NOME: CAMILA AYUMI PENTEADO
% RA: 1806360
% DADOS: n=numero inteiro positivo
% RESULTADOS: Escalonamento de M com pivotamento parcial
% CONDICOES DE FUNCIONAMENTO: Matriz deve ser quadrada e determinante da matriz
% A deve ser diferente de zero
% FONTES: https://www.youtube.com/watch?v=kMApKEKisKE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc
%%%%%%%%%%%%%%(A)%%%%%%%%%%%%%%%%%
n=4;
M=rand (n:n);
b=rand (n:1);
[m,n]=size(M)
%%%%%%%%%%%%%%(B)%%%%%%%%%%%%%%%%%
%pivotamento
for j=1:m-1
  for y=2:m
    if M(j,j)==0
       t=M(j,:);
       M(j,:)=M(z,:);
       M(y,:)=t;
    end
  end
%Converter para zero
  for i=j+1:m
      M(i,:)=M(i,:)-M(j,:)*(M(i,j)/M(j,j));
  end
end
x=zeros(1,m);
%Substituição
for s=m:-1:1
    c=0;
  for k=2:m
      c=c+M(s,k)*x(k);
  end
  x(s)=(M(s,n)-c)/M(s,s);
end
M
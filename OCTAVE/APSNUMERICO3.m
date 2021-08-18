% NOME: CAMILA AYUMI PENTEADO
% RA: 1806360
% DADOS: n, MAX_ITER=numero inteiro, tol=numero inteiro positivo
% RESULTADOS: Comparacao da solucao aproximada com a solucao obtida por x=A\b
% CONDICOES DE FUNCIONAMENTO: Det(A) deve ser diferente de zero 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc
%%%%%%%%%%%%%%(A)%%%%%%%%%%%%%%%%%
n=3
MAX_ITER=50;
tol=10e-5;
A=rand(n);
D=R=zeros(n);
b=rand(n,1);
%%%%%%%%%%%%%%(B)%%%%%%%%%%%%%%%%%
for i =1:n
  A(i,i) += n;
end
det(A)
if det(A)==0 
  error("det(A)=0")
end
%%%%%%%%%%%%%%%(C)%%%%%%%%%%%%%%%%%
xvelho = [0;0;0]
for i=1:n
  D(i,i) = A(i,i);
end
R = A -D
for i = 1:MAX_ITER
  xnovo = inv(D)*(b-R*xvelho);  
  xvelho= xnovo
    if norm (A*xvelho -b, inf) < tol 
      break
    end
end
%%%%%%%%%%%%%%%(D)%%%%%%%%%%%%%%%%%
exata = A\b
norm(exata-xnovo,inf)
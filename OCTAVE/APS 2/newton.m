% NOME: CAMILA AYUMI PENTEADO
% RA: 1806360
% DADOS: MAX_ITER: número inteiro positivo; tol: número positivo; x0: número
% real; f(x): contínua e derivável.
% RESULTADOS: Validação de possuir raízes no intervalo dado, aproximação de 
% função pelo método de Newton e comparação das aproximações.
% CONDICOES DE FUNCIONAMENTO: A função deve ser derivável 
%%%%%%%%%%%%%%(C)%%%%%%%%%%%%%%%%%
more off
clc
clear
tic
x0=0.5;
MAX_ITER=30; 
tol=10e-5;
%f(x)= (x^3)-2x+1, f'(x)=(3x^2)-2
% h(x) = x - f(x)/f'(x)
function y1 = h(x)
	y1= x-(((x^3)-2*x+1)/(-2+3*x^2));
end

i=1;
while (i<=MAX_ITER)
  x=h(x0);
  printf("x(%d) = %f\n",i,x); 
  if (abs(x-x0)<tol)
   printf ("A solucao aproximada e : %f\n",x);
	  break
	else
		i=i+1;
		x0=x;
    if (i== MAX_ITER) && h(x0)>=tol
	 prntf("O método falhou após %d iterações.\n",MAX_ITER); 
  end   
	end
end
toc 

tic
fzero('funcao', 0.5) 
toc

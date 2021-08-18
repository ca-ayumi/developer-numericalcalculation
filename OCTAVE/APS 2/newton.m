% NOME: CAMILA AYUMI PENTEADO
% RA: 1806360
% DADOS: MAX_ITER: n�mero inteiro positivo; tol: n�mero positivo; x0: n�mero
% real; f(x): cont�nua e deriv�vel.
% RESULTADOS: Valida��o de possuir ra�zes no intervalo dado, aproxima��o de 
% fun��o pelo m�todo de Newton e compara��o das aproxima��es.
% CONDICOES DE FUNCIONAMENTO: A fun��o deve ser deriv�vel 
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
	 prntf("O m�todo falhou ap�s %d itera��es.\n",MAX_ITER); 
  end   
	end
end
toc 

tic
fzero('funcao', 0.5) 
toc

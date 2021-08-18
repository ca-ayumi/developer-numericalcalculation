% NOME: CAMILA AYUMI PENTEADO
% RA: 1806360
% DADOS: MAX_ITER: n�mero inteiro positivo; tol: n�mero positivo; x0: n�mero 
% real.
% RESULTADOS: Aproxima��o de zero de fun��o pelo m�todo do ponto fixo e
% compara��o das aproxima��es.
% CONDICOES DE FUNCIONAMENTO: A fun��o deve ser cont�nua
%%%%%%%%%%%%%%(B)%%%%%%%%%%%%%%%%%
more off
clc
clear
tic

x0=0.5;
MAX_ITER=30; 
tol=10e-5;

function y = f(x)
       	y= -1/((x^2)-2);
end

i=1; 
while (i<=MAX_ITER)
  x= f(x0);
  printf("x(%d) = %f\n",i,x); 
  if (abs(x-x0)<tol)
   printf ("A solucao aproximada e : %f\n",x);
	  break
	else
		i=i+1;
		x0=x;
    if (i== MAX_ITER) && abs(f(x0)-x0)>=tol
	 printf("O m�todo falhou ap�s %d itera��es.\n",MAX_ITER); 
  end 
	end
end
toc

tic
fzero('funcao', 0.5 ) 
toc
 

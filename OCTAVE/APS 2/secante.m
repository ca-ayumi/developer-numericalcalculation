% NOME: CAMILA AYUMI PENTEADO
% RA: 1806360
% DADOS: MAX_ITER: número inteiro positivo; tol: número positivo; x0 e x1:
% números reais; f(x): contínua.
% RESULTADOS: Aproximação de zero de função pelo método da secante e comparação
% das aproximações.
% CONDICOES DE FUNCIONAMENTO: f (x1)-f(x0) deve ser diferente de zero
%%%%%%%%%%%%%%(A)%%%%%%%%%%%%%%%%%
more off
clc
clear
tic

x0=0.7;
x1=0.5;
MAX_ITER=30; 
tol=10e-5;
tol2=10e-5;
%f(x)= (x^3)-2x+1, f'(x)=(3x^2)-2
% h(x) = x - f(x)/f'(x)
function y = f(x)
       	y= (x^3)-2*x+1;
end

i=1; 
g0=f(x0);
g1=f(x1);

if g1-g0 < tol2;
 break
end

while (i<=MAX_ITER)
  x= ((x0*g1)-(x1*g0))/(g1-g0);
  printf("x(%d) = %f\n",i,x); 
  if (abs(x-x0)<tol)
  printf ("A solucao aproximada e : %f\n",x);
	  break    
  else
		i=i+1;
		x0=x1;
    g0=g1;
    x1=x;
    g1=f(x);
    if (i== MAX_ITER) && f(x0)>=tol
	  printf("O metodo falhou apos %d iteracoes.\n",MAX_ITER); 
  end
	end
end
toc

tic
fzero('f', 0.5) 
toc

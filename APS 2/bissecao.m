% NOME: CAMILA AYUMI PENTEADO
% RA: 1806360
% DADOS: MAX_ITER: número inteiro positivo; tol: número positivo; a e b: números
% reais; f(x): contínua.
% RESULTADOS: Validação de possuir raízes no intervalo dado, aproximação de 
% função pelo método da bissecção e comparação das aproximações.
% CONDICOES DE FUNCIONAMENTO: A função dada deve possuir pelo menos uma raiz no
% intervalo dado.
%%%%%%%%%%%%%%(A)%%%%%%%%%%%%%%%%%
more off
clc
clear
tic

a=-2; 
b=1.5; 
MAX_ITER=30; 
tol=10e-5;

function y = funcao (x)
	y=(x^3)-2*x+1;
end

if funcao(a)*funcao(b)>0;
  break 
end
%%%%%%%%%%%%%%(B)%%%%%%%%%%%%%%%%%
i=1;
FA = funcao(a);
printf("\iter \t anovo \t         bnovo \t        xnovo \t       f(xnovo)\n");
while (i<=MAX_ITER) 
  x=a+(b-a)/2;
    FX=funcao(x);    
  printf("\n%d \t %5.4f \t %5.4f \t %5.4f \t %5.4f\n",i,a,b,x,FX);
	if abs(FX)< tol 
		printf("A solucao aproximada é : %f\n",x);
		break
	else
	  i=i+1; 
	  if (FA*FX>0)
			a=x;
			FA=FX;
		else
			b=x;
  if (i== MAX_ITER) && funcao((b-a)/2)>=tol
	 printf("O método falhou após %d iterações.\n",MAX_ITER); 
  end   
		end
	end 
end
toc
 
tic
fzero('funcao', -1) 
toc


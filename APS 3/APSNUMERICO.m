% NOME: CAMILA AYUMI PENTEADO
% RA: 1806360
% DADOS: N = numero inteiro maior que zero, a e b = extremos de integração
% RESULTADOS: Aproximação da integral de f em [a,b] usando a regra do trapézio
% repetida e a regra de 1/3 de Simpson repetida, comparação das soluções
% CONDICOES DE FUNCIONAMENTO: 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc
%%%%%%%%%%%%%%(A)%%%%%%%%%%%%%%%%%
a=1;
b=2;
n=4;
h= (b-a)/n;

function y=f(x);
         y= 1/x;
endfunction

xi=a;
soma=0; 
x=0;
xi = a+h;
 for i=1:n-1
  x=x+1;
  soma = soma+f(xi);
  xi=xi+h;
end
Itr= ((h/2)*(2*soma + f(a)+f(b)))
%%%%%%%%%%%%%%(B)%%%%%%%%%%%%%%%%%

a=1;
b=2;
n=4;
h= (b-a)/n;

function y=f(x);
         y= 1/x;
endfunction

xi=a;
soma=0; 
soma1=0;
x=0;
xi = a+h;
 for i=1:n-1
  x=x+1;
  soma = soma+f(xi);
  xi=xi+h;
    if mod(x,2)==1;
     soma1=soma1+f(xi);
     end
  end
Isr= ((h/3)*(2*soma+4*soma1+f(a)+f(b)))

%%%%%%%%%%%%%%(C)%%%%%%%%%%%%%%%%%
quad ('f(x)',a,b) 
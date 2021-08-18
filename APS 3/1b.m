% NOME: CAMILA AYUMI PENTEADO
% RA: 1806360
% DADOS: MAX_ITER: a e b: extremos de integração, função integrável e n: inteiro
% RESULTADOS: Aproximação da função utilizando regra de 1/3 de Simpson repetida
% CONDICOES DE FUNCIONAMENTO: f(x) deve ser integrável
%%%%%%%%%%%%%%(B)%%%%%%%%%%%%%%%%%
clc
clear
a=1;
b=2;
n=4;
h= (b-a)/n;

function y=f(x);
         y= 1/x;
endfunction

soma=0;
x1=h;
x2=2*h;
 for i=1:n
    if mod(i,2)==1;
     soma=(2*f(x1)+f(x2));
     x1=2*h;
     x2=2*h;
     end
  end
Isr= ((h/3)*(2*soma+f(a)-f(b)))
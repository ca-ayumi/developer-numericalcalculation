clear
clc
a=0.5
b=2
MAX_ITER= 50
tol=10e-5

function valor = funcao (x)
 valor = x.^2-1;
endfunction

function funcao = bisseccao (a,b,MAX_ITER,tol)

if (funcao(a)*funcao(b)>0);
  break
funcao(a)*funcao(b)  
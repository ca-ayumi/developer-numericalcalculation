%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear
a=0;
b=1;
n=20;
h= (b-a)/n;

function y=f(x);
         y= sin(x);
endfunction
soma=0; 
xi = a+h;
 for i=1:n-1
  soma = soma+f(xi);
  xi=xi+h;
end
Itr= ((h/2)*(2*soma + f(a)+f(b)))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Erro= abs (quad ('f(x)',a,b) - Itr)

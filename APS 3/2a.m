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
xi=h;
x1=2*h;
for i=1:n
    soma= soma + f(2*i-1) + 4*f(2*i)+f(2*i+1);
  end
Isr= (h/3)*soma
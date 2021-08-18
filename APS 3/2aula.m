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
  if mod(i,2)!=1
    soma+=(2*f(xi)+f(x1));
    xi+=2*h;
    x1+=2*h;
  end
end
Isr= ((h/3)*(2*soma+f(a)-f(b)))
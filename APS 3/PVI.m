%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc
clear
a=0;
b=1;
h=0,25;

function valor =f(t,x)
         valor = x
endfunction

x = a:h:b;
n=length(x);
x0=1;
for i:n-1
 k1= f(t(i),x(i));
 k2= x(i) + (h*k1);
  x(i+1)=x(i) + (k2*h);
end 

x
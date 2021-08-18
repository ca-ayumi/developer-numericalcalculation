clear
clc
h=0.05;
n=20;
s=0;
xi=h;
xj=2*h;
a=0;
b=1;

function y=f(x);
         y= sin(x);
endfunction
for i=1:20
  if mod(i,2)!=1
    s+=(2*f(xi)+f(xj));
    xi+=2*h;
    xj+=2*h;
  end
end
simpson=(h/3)*(2*s+f(a)-f(b))

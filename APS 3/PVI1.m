% NOME: CAMILA AYUMI PENTEADO
% RA: 1806360
% DADOS: MAX_ITER: a e b: extremos e n: número inteiro
% RESULTADOS: Aproximação da solução numérica do PVI: x'=x*t, x(0)=1
%%%%%%%%%%%%%%(A)%%%%%%%%%%%%%%%%%
clear
clc
h=0.25;
a=0;
b=1;
t=[a:h:b];
n=(b-a)/h;
x=zeros(1,n);
y=zeros(1,n);

function valor=f(t,x)
         valor=x;
end

x(1) =1;
for i= 1:n
  K1=f(t(i),x(i));
  K2=f(t(i)+1,x(i)+(h*K1));
  x(i+1) =x(i)+((h/2)*(K1+K2));
 end
RungeK2=x()
%%%%%%%%%%%%%%(B)%%%%%%%%%%%%%%%%%
y(1)=1;
for i= 1:n
  K1=f(t(i),y(i));
  K2=f(t(i)+(h/2),y(i)+(h/2)*K1);
  K3=f(t(i)+(h/2),y(i)+(h/2)*K2);
  K4=f(t(i)+1,y(i)+h*K3);
  y(i+1) =y(i)+((h/6)*(K1+(2*(K2+K3))+K4));
 end
RungeK4=y()
%%%%%%%%%%%%%%(C)%%%%%%%%%%%%%%%%%
exata=exp(t);
plot(t,x, t,y, t,exata)
%%%%%%%%%%%%%%(D)%%%%%%%%%%%%%%%%%
Emax2=norm(x-exata)
Emax4=norm(y-exata)




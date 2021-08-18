clear
clc

h=0.25;
a=0;
b=1;
t=[a:h:b];
x=zeros(1,((b-a)/h)+1);
y=zeros(1,((b-a)/h)+1);
x(1) =1;
y(1)=1;
n=(b-a)/h;

function valor=f(t,x)
  valor=x;
end

%metodo RK2
for i= 1:n
  k1=f(t(i),x(i));
  k2=f(t(i)+1,x(i)+(h*k1));
  x(i+1) =x(i)+((h/2)*(k1+k2));
 end
RK2=x()

%metodo RK4
for i= 1:n
  k1=f(t(i),y(i));
  k2=f(t(i)+(h/2),y(i)+(h/2)*k1);
  k3=f(t(i)+(h/2),y(i)+(h/2)*k2);
  k4=f(t(i)+1,y(i)+h*k3);
  y(i+1) =y(i)+((h/6)*(k1+(2*(k2+k3))+k4));
 end
RK4=y()

%exata
exata=exp(t)

%graficos
plot(t,x, t,y, t,exata)

%erro maximo
erroRK2=norm(x-exata)
erroRK4=norm(y-exata)




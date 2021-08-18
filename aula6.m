%Dados N e MAX_ITER e um número positivo tol
clear
clc
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n=3
MAX_ITER=100
tol=10e-5
A=rand(n);
b=rand(n,1);
det(A)
if det(A)==0 
  error("det(A)=0")
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%
for p=1:n
  A(p,p)+=(n-1);
end
S=(A\b)
A1=[zeros(n)];
R=[zeros(n)];
for i=1:n
  for j=1:n
    if i==j
      A1(i,j)=(1/A(i,j));
    else
      R(i,j)=(1*A(i,j));
    end
  end
end
A;
A1;
R;
x1=zeros(n,1)
for i=1:MAX_ITER
  xn=A1*(b-(R*x1));
  x1=xn;
  if norm((A*xn)-b,inf) < tol;
    break
  end
end
xn
%%%% Resolução de sistemas lineares %%%%%
%EXEMPLO

A= [4.00 0.24 -0.08; 0.09 3.00 -0.15; 0.04 -0.08 4.00]
b= [8.00; 9.00; 20.00]
%R = [ 0, 0.06,  -0.02; 0.03, 0, -0.05; 0.01, 0.02, 0]
%d = [2.00, 2.97, 5.00]
%x = [0;0;0] %%iteração 0 
tol = 10*e^-5
MAX_INTER = 2
%
%for i = 1:
%  x (i) = d (i) - R(i,:)*x
%end
xvelho = [0;0;0]

for i=1:3
  D(i,i) = A(i,i);
end

R = A -D

for i = 1:MAX_INTER
  xnovo = inv(D)*(b-R*xvelho);  
  xvelho= xnovo;
    if norm (A*xvelho -b, inf) < tol 
    break
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ALUNO: GUSTAVO MASCHI
%RA: 1806416
%DADOS: UM NÚMERO INTEIRO (N)
%RESULTADO: O FATORIAL DOS NÚMEROS ATÉ O N DIGITADO E O GRÁFICO DA FUNÇÃO FATORIAL
%CONDIÇÕES DE FUNCIONAMENTO: N DEVE ESTAR ENTRE 1 E 12
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n=12;
n=int32(n)
fat=1;
for i=1:n
  fat=fat*i;
  vet(i)=fat;
end
vet
plot(vet)

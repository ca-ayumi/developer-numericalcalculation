%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%ALUNO: GUSTAVO MASCHI
%RA: 1806416
%DADOS: UM N�MERO INTEIRO (N)
%RESULTADO: O FATORIAL DOS N�MEROS AT� O N DIGITADO E O GR�FICO DA FUN��O FATORIAL
%CONDI��ES DE FUNCIONAMENTO: N DEVE ESTAR ENTRE 1 E 12
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

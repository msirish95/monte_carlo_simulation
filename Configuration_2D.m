clear all; clc;

global N
global Q
N=2;
Q=2;
Temp=(0:0.25:10)';
iter=100;
%----------- ANALYTICAL APPROACH-----------------
n=Q^(N^2);%no. of combinations
S = matrix_generator_appro(n); %all possible combinations

for i=1:n
    E(i,1)=energy_calculator_appro(S{i,1});
end

analytical_appro(E,n);
%----------- MOnte Carlo Approach--------------
A = orientation_Matrix_MC;
for i=1:size(Temp,1)
    for iter=1:iter
        [B,E] = reorientation_MC(A,Temp(i,1));
        A=B;
        X(iter,1)=E;
    end
    MCS_avg(i,1)=sum(X([(0.2*iter):end],1))/(0.8*iter);
end
MCS_avg(1,1)=0;
plot(Temp,MCS_avg,'-*');
xlabel('Temperature');
ylabel('Average Energy');
legend('Analytical approach','Monte Carlo approach','Location','southeast');
ylim([0 (N*(N-1))]);
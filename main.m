clear all; clc;
% THE MAIN FUNCTION
% 
% We generate a random matrix which is zero padded using the randi function.
% We use orientation_Matrix(n)
% n in the dimention of the matrix.
% the resultent matrix is n+2 dimentional beause of the zero padding.
N=30;
Q=2;
Temp=1;
iter=10000;
A = orientation_Matrix(N,Q);

%C=A; % making a copy of this as C (copy)

% The initial energy is used to compare wth the final energy after the
% given iterations.

initia_energy=energy_calculator(A); 

% The function reorientation  is iterated a 10000 times. X is a Matrix which
% saves the energy value at each iteration in the first column and the
% iteration number in the second.
% T is another matrix which takes all columns and rows from the second till
% the end. This is just done to remove the zero paddings when plotting
% Pcolor gives us the plot of T and holds the plot for 0.005 seconds so
% that we can observe the simulation.

for iter=1:iter
[B,E] = reorientation(A,Q,Temp);
A=B;
X(iter,1)=E;
X(iter,2)=iter;
T=B(2:end,2:end);
% if iter==1
%     pcolor(T)
%     hold on
%     figure;
% end
if iter==iter
    pcolor(T)
%     hold on
%     figure;
end
% pcolor(T)
% pause(0.005)
end
hold on
figure;

% Finally the energy vs iterations is plotted to observe the energy
% reduction.

energy_iterationsPlot(X,N);

% The final enery is calculated again after reorientation for comparision.
% This value of final will always be lesser than initail.

final_energy=energy_calculator(B);
function [V,Energy] = reorientation(V,Q,temp)
n=size(V,1);
% A temperature of 5k is considered.
% A random lattice point is chosen in the matrix
i=randi([2 n-1]);
j=randi([2 n-1]);
% A sample for trial is saved in S
% Inital energy is calculated and saved in E1
S=V;
E1=energy_calculator(V);

% The orientation of one random lattice point is changed
% Energy of this new sample matrix is calculated 
S(i,j)=randi(Q);
E2=energy_calculator(S);

% If the energy with this new random changed orientation is lesser then the
% original then the new orientation is updated to the original V. Else if 
% the energy does not change or is more, then nothing is updated.
% As this process is repeated the Matrix comes to lower energy states. This
% means that the orientations around a lattice point is becoming the same.
% This is the basis for the grain growing.

if E2<E1
   V=S;
else if rand<exp(-(E2-E1)/temp) % Implementing metropolis algorithm 
        V=S;
    end
end

Energy=energy_calculator(V); % Returing the Energy for plotting
end
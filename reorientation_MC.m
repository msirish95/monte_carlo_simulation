function [V,Energy] = reorientation_MC(V,temp)
global Q
n=size(V,1);
i=randi([2 n-1]);
j=randi([2 n-1]);

S=V;
E1=energy_calculator_MC(V);

S(i,j)=randi(Q);
E2=energy_calculator_MC(S);


if E2<E1
   V=S;
else if rand<exp(-(E2-E1)/temp) % Implementing metropolis algorithm 
        V=S;
    end
end

Energy=energy_calculator_MC(V); % Returing the Energy for plotting
end
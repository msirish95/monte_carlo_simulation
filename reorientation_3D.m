function [V,Energy] = reorientation_3D(V,Q)
n=size(V,1);

temp=1 ;

i=randi([2 n-1]);
j=randi([2 n-1]);
k=randi([2 n-1]);


S=V;
E1=energy_calculator_3D(V);
S(i,j,k)=randi(Q);
E2=energy_calculator_3D(S);



if E2<E1
   V=S;
else if rand<exp(-(E2-E1)/temp) % Implementing metropolis algorithm 
        V=S;
    end
end

Energy=energy_calculator_3D(V);
end
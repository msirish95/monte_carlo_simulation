% The energy of the matrix is calulated by using the Hamiltonian equation
% assumption J=1
% The value of E (energy) is incremented at every step where the energy at
% each lattice point is calculated. The zero padding is done so that it can
% help with calculting energy of lattice points at the edges. 

function E = energy_calculator(S)
E=0;
delta=0;
n=size(S,1);

for i=2:n-1
    for j=2:n-1
        
        if S(i,j)==S(i+1,j) | S(i+1,j) ==0
            delta=1;
        else
            delta=0;
        end
        
        E=E+(1-delta);
       
        if S(i,j)==S(i,j+1) | S(i,j+1) ==0
            delta=1;
        else
            delta=0;
        end
        
        E=E+(1-delta);
    end
end
end
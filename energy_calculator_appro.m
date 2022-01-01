% The energy of the matrix is calulated by using the Hamiltonian equation
% assumption J=1
% The value of E (energy) is incremented at every step where the energy at
% each lattice point is calculated. The zero padding is done so that it can
% help with calculting energy of lattice points at the edges. 

function E = energy_calculator_appro(B)
E=0;
delta=0;
n=size(B,1);
for i=1:n+2 % adding zero padding
    for j=1:n+2
        if i==1 || i==n+2 || j==1 || j==n+2
            X(i,j)=0;
        else
            X(i,j)=B(i-1,j-1);
        end
    end
end
for i=2:n+1
    for j=2:n+1

        if X(i,j)==X(i+1,j) | X(i+1,j) ==0
            delta=1;
        else
            delta=0;
        end
        
        E=E+(1-delta);
        
        if X(i,j)==X(i,j+1) | X(i,j+1) ==0
            delta=1;
        else
            delta=0;
        end
        
        E=E+(1-delta);
    end
end
end
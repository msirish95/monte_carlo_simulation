
function E = energy_calculator_MC(S)
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
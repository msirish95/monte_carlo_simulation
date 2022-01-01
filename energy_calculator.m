function E = energy_calculator(S)
E=0;
delta=0;
n=size(S,1);

for i=1:n-1
    for j=2:n-1
        
        if S(i,j)==S(i+1,j)
            delta=1;
        else
            delta=0;
        end
        
        E=E+(1-delta);
       
        if S(i,j)==S(i,j+1)
            delta=1;
        else
            delta=0;
        end
        
        E=E+(1-delta);
        
        if S(i,j)==S(i+1,j+1)
            delta=1;
        else
            delta=0;
        end
        
        E=E+(1-delta);
    end
end
end
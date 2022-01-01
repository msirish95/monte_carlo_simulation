%------ length ------
L=0;
for i=1:size(ai,1)
    if Pointenergy_calculator(A,ai(i),aj(i))~=0
        L=L+1;
    end
end

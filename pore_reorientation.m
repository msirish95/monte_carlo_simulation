function A = pore_reorientation(A)

[i,j]=find(A==0);
core=horzcat(i,j);
point=datasample(core,1);

E1=Pointenergy_calculator(A,point(1,1),point(1,2));
% E1=Pointenergy_cal_reori(A,point(1,1),point(1,2));
a=point(1,1);
b=point(1,2);
B= pore_swapping(A,a,b);

E2=Pointenergy_calculator(B,a,b);
% E2=Pointenergy_cal_reori(B,a,b);

if E2<=E1
   A=B;
else if rand<exp(-(E2-E1)/0.01) % Implementing metropolis algorithm 
        A=B;
    end
end

end
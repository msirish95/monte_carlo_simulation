function A = solid_reorientation(A,point,numb)

E1=Pointenergy_calculator(A,point(1,1),point(1,2));

B=A;

B(point(1,1),point(1,2))=randi(numb)+1;

E2=Pointenergy_calculator(B,point(1,1),point(1,2));

if E2<=E1
   A=B;
else if rand<exp(-(E2-E1)/0.1) % Implementing metropolis algorithm 
        A=B;
    end
end

end
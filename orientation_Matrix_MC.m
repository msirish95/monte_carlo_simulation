function S = orientation_Matrix_MC
global N
global Q
for i=1:N+2
    for j=1:N+2
        if i==1 || i==N+2 || j==1 || j==N+2
            S(i,j)=0;
        else
            S(i,j)= randi(Q);
        end
    end
end
end
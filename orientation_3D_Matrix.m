function S = orientation_3D_Matrix(n,Q)
for i=1:n+2
    for j=1:n+2
        for k=1:n+2
        if i==1 || i==n+2 || j==1 || j==n+2 || k==1 ||k==n+2
            S(i,j,k)=0;
        else
            S(i,j,k)= randi(Q);
        end
    end
end
end
end
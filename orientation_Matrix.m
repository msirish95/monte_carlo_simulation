% Input dimention n
% The random variables are only betwwen 1 to 10
% each number represents one of 10 random orientations of the grain.

function S = orientation_Matrix(n,Q)
for i=1:n+2
    for j=1:n+2
        if i==1 || i==n+2 || j==1 || j==n+2
            S(i,j)=0;
        else
            S(i,j)= randi(Q);
        end
    end
end
end
function A=annihilation(A,vacancy)

orientation=orientation_movement(A,vacancy);

[i,j]=find(A==orientation);
[k,l]=find(A==(orientation+1000));
[o,p]=find(A==(orientation-1000));

m=vertcat(i,k,o);
n=vertcat(j,l,p);

centroid= [floor(mean(m)),floor(mean(n))];
c1=centroid(1);c2=centroid(2);% Centroid points

p1=vacancy(1,1);p2=vacancy(1,2);% vacancy points

N=size(A,1);
Y=line_points(N,c1,c2,p1,p2);

W=path_points(A,Y,c1,c2,p1,p2);

for e=1:(size(W,1)-1) % ANNIHILATION 
    if A(W(e,1),W(e,2))~= A(W(e+1,1),W(e+1,2))
        A(W(e,1),W(e,2))= A(W(e+1,1),W(e+1,2));
    end
end
end
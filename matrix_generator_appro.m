function S = matrix_generator_appro(n)
global N
global Q
%Algorithm for obtaining all possible configurations given matrix size
for i=0:n-1
    tempo=i;
    for j=1:(N^2)
    A((n)-i,j)=(mod(tempo,Q)+1); %Prevent zero for zero padding
    tempo=floor(tempo/Q);
    end
end

%Placing the contents of the matrix A into a array of matrices S
for i=1:n
    L=1;
    for j=1:N
        for k=1:N
            S{i,1}(j,k)=A(i,L);% I am SO wrong - Sirish Mulugu. Vidyut ki Jai
            L=L+1;
        end
    end
end
end
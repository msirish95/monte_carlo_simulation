function A=plotting(sets,r)

N=(sets*4*r)+(3*r);
A=ones(N);
A=A*-1;
[c,d]=centers(sets,N,r);


for k=1:size(d,1)
    di=d(k,1);
    dj=d(k,2);
    for i=1:N
        for j=1:N
            if ((i-di)^2+(j-dj)^2<=(r)^2)
                A(i,j)=0; % Pore
            end
        end
    end
end

for k=1:size(c,1)
    ci=c(k,1);
    cj=c(k,2);
    for i=1:N
        for j=1:N
            if ((i-ci)^2+(j-cj)^2<=(r)^2)
                A(i,j)=k; % Liquid
            end
        end
    end
end

for k=1:size(c,1)
    ci=c(k,1);
    cj=c(k,2);
    for i=1:N
        for j=1:N
            if ((i-ci)^2+(j-cj)^2<=(9*r/10)^2)
                A(i,j)=k+1000;%Solids
            end
        end
    end
end
% pcolor(A)
end
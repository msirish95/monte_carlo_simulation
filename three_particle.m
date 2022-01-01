N=110;
A=zeros(N);
r=25;

ci=80;
cj=55;
for i=1:N
    for j=1:N
        if ((i-ci)^2+(j-cj)^2<r^2)
            A(i,j)=1;
        end
    end
end

ci2=ci-floor(sqrt(3)*r);
cj2=cj-r;
for i=1:N
    for j=1:N
        if ((i-ci2)^2+(j-cj2)^2<r^2)
            A(i,j)=1;
        end
    end
end

ci3=ci-floor(sqrt(3)*r);
cj3=cj+r;
for i=1:N
    for j=1:N
        if ((i-ci3)^2+(j-cj3)^2<r^2)
            A(i,j)=1;
        end
    end
end

pcolor(A)
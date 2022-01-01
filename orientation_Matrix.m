function A = orientation_Matrix()

N=50;
A=ones(N);
A=A*-1;
r=10;

ci1=30;
cj1=25;
ci3=ci1-floor(sqrt(3)*r);
cj3=cj1+r;
ci2=ci1-floor(sqrt(3)*r);
cj2=cj1-r;
ci4=floor((ci1+ci2+ci3)/3);
cj4=floor((cj1+cj2+cj3)/3);

for i=1:N
    for j=1:N
        if ((i-ci4)^2+(j-cj4)^2<=(r/2)^2)
            A(i,j)=0;
        end
    end
end

for i=1:N
    for j=1:N
        if ((i-ci1)^2+(j-cj1)^2<=r^2)
            A(i,j)=1;
        end
    end
end


for i=1:N
    for j=1:N
        if ((i-ci2)^2+(j-cj2)^2<=r^2)
            A(i,j)=2;
        end
    end
end


for i=1:N
    for j=1:N
        if ((i-ci3)^2+(j-cj3)^2<=r^2)
            A(i,j)=3;
        end
    end
end
pcolor(A)
end
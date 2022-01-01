clc;clear all;

A=orientation_Matrix;
pcolor(A)
figure

[i,j]=find(A==1);
centroid= [floor(mean(i)),floor(mean(j))];
c1=centroid(1);c2=centroid(2);

p1=6;p2=20;% vacancy point

N=size(A,1);
i=1;
Y1=0;
for x=1:N
    y=floor(c2+((c2-p2)/(c1-p1))*(x-c1));
    if y>0&& y<25
        Y1(i,1)=x;
        Y1(i,2)=y;
        i=i+1;
    end
end
j=1;
Y2=0;
for y=1:N
    x=ceil(c1+((c1-p1)/(c2-p2))*(y-c2));
    if x>0 && x<25
        Y2(j,1)=x;
        Y2(j,2)=y;
        j=j+1;
    end
end

if size(Y1,1)>size(Y2,1)
    Y=Y1;
else
    Y=Y2;
end

for k=1:size(Y,1)
    A(Y(k,1),Y(k,2))=5;
end

A(p1,p2)=9;
pcolor(A)
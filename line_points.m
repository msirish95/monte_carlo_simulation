function Y=line_points(N,c1,c2,p1,p2)

i=1;
Y1=0;
for x=1:N
    y=floor(c2+((c2-p2)/(c1-p1))*(x-c1));
    if y>0&& y<N
        Y1(i,1)=x;
        Y1(i,2)=y;
        i=i+1;
    end
end

j=1;
Y2=0;
for y=1:N
    x=floor(c1+((c1-p1)/(c2-p2))*(y-c2));
    if x>0 && x<N
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
end
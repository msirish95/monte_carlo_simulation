function W=path_points(A,Y,c1,c2,p1,p2)

j=1;

for i=1:size(Y,1)
    if Y(i,1)==p1 && Y(i,2)==p2
        a=i;
    end
end

if (p1+p2)<(c1+c2)
    
    for i=a:size(A,1) 
        if A(Y(i,1),Y(i,2))==-1
            W(j,1)=Y(i,1);
            W(j,2)=Y(i,2);
            break;
        end
        W(j,1)=Y(i,1);
        W(j,2)=Y(i,2);
        j=j+1;
    end
else
    for i=a:-1:1
        if A(Y(i,1),Y(i,2))==-1
            W(j,1)=Y(i,1);
            W(j,2)=Y(i,2);
            break;
        end
        W(j,1)=Y(i,1);
        W(j,2)=Y(i,2);
        j=j+1;
    end
end
end
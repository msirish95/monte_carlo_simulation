function [c,d]=centers(sets,N,r)

total = (sets*2)^2;
n = total/sets;

c(1,1)=N-(2*r);
c(1,2)=2*r;

for i=2:total
    
    if mod(i-1,n) == 0
     c(i,1)=c(i-n+1,1)-floor(sqrt(3)*r);
     c(i,2)=c(i-n+1,2)-r;
     
    else
    if mod(i,2)==0
        c(i,1)=c(i-1,1)-floor(sqrt(3)*r);
        c(i,2)=c(i-1,2)+r;
    else
        c(i,1)=c(i-2,1);
        c(i,2)=c(i-2,2)+(2*r);
    end
    end
    
end


j=1;
for i=1:total
    if mod(i,n) ~= 0 && mod(i+1,n) ~= 0
    d(j,1)=floor((c(i,1)+c(i+1,1)+c(i+2,1))/3);
    d(j,2)=floor((c(i,2)+c(i+1,2)+c(i+2,2))/3);
    j=j+1;
    end
    
    if mod(i,2)==0 && mod(i,n) ~= 0 && i < (total - n)
    d(j,1)=floor((c(i,1)+c(i+(n-1),1)+c(i+(n+1),1))/3);
    d(j,2)=floor((c(i,2)+c(i+(n-1),2)+c(i+(n+1),2))/3);
    j=j+1;
    d(j,1)=floor((c(i,1)+c(i+(2),1)+c(i+(n+1),1))/3);
    d(j,2)=floor((c(i,2)+c(i+(2),2)+c(i+(n+1),2))/3);
    j=j+1;
    end
end
end
function [orientation,r] = orientation_movement(A,vacancy)

v1=vacancy(1,1);
v2=vacancy(1,2);

a(1,1)=v1-1;
a(2,1)=v1-1;
a(3,1)=v1-1;
a(4,1)=v1;
a(5,1)=v1;
a(6,1)=v1+1;
a(7,1)=v1+1;
a(8,1)=v1+1;

a(1,2)=v2-1;
a(2,2)=v2;
a(3,2)=v2+1;
a(4,2)=v2-1;
a(5,2)=v2+1;
a(6,2)=v2-1;
a(7,2)=v2;
a(8,2)=v2+1;

M=[];
orientation=[];
k=1;
for i=1:8
    if A(a(i,1),a(i,2))>0
        M(k,1)=a(i,1);
        M(k,2)=a(i,2);
        k=k+1;
    end
end

if isempty(M)
    r=0;
else
    r=1;
    if size(M,1)==1
        sample=M;
    else
        sample = datasample(M,1);
    end
    
    orientation=A(sample(1,1),sample(1,2));
end

% if size(M,1)==1
%     sample=M;
% else
%     sample = datasample(M,1);
% end
%
% orientation=A(sample(1,1),sample(1,2));


% s=size(A);
% N=length(s);
% [c1{1:N}]=ndgrid(1:3);
% c2(1:N)={2};
% offsets=sub2ind(s,c1{:}) - sub2ind(s,c2{:});
% linearInd = sub2ind(size(A),vacancy(1,1), vacancy(1,2));
% neighbors = A(linearInd+offsets);
%
% sample = datasample(find(neighbors~=0),1);
% orientation=neighbors(sample);

end
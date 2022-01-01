function A = pore_swapping(A,pi,pj)
neighbours=[];
k=1;
for i=pi-1:pi+1
    for j=pj-1:pj+1
        if i==pi && j==pj
            continue
        end
        if A(i,j)==1
        neighbours(k,1)=A(i,j);
        neighbours(k,2)=i;
        neighbours(k,3)=j;
        k=k+1;
        end
    end
end
if ~(isempty(neighbours))
pos=randi(size(neighbours,1));
% if neighbours(pos,1)~=-1
    S=A(pi,pj);
    A(pi,pj)=A(neighbours(pos,2),neighbours(pos,3));
    A(neighbours(pos,2),neighbours(pos,3))=S;
% end
end
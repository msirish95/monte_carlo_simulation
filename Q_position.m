function [xyzQ] = Q_position(C,x,y,z,Q)

xyzQ=cell(1,Q);
C_index=xyzQ;
for q = 1:Q
    C_index{1,q}=find(C(:,:,:)==q);
    xyzQ{1,q}=[];
    for count=1:prod(size(C_index{1,q}))
        Element_location(count,:)=Find_location(C_index{1,q}(count),C);
        xyzQ{1,q}=[xyzQ{1,q};...
            x(Element_location(count,1),Element_location(count,2),Element_location(count,3)),...
            y(Element_location(count,1),Element_location(count,2),Element_location(count,3)),...
            z(Element_location(count,1),Element_location(count,2),Element_location(count,3))];
    end
end
end
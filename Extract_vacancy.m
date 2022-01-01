% function [vacancy,c]= Extract_vacancy(A,c)
function [vacancy]= Extract_vacancy(A)
[i,j]=find(A==0);
i=i';j=j';

pores=[i;j]'; %--pores--
vacancy_list=[];
k=1;
for count=1:size(pores,1) %-- Vacancys--
    check(1,1)=pores(count,1);
    check(1,2)=pores(count,2);
    [orientation,r]=orientation_movement(A,check);
    if r==1
        vacancy_list(k,1)=pores(count,1);
        vacancy_list(k,2)=pores(count,2);
        k=k+1;
    end
end

if size(vacancy_list,1)==0
    vacancy=[];
elseif size(vacancy_list,1)==1
    vacancy=vacancy_list;
    %     c=0;
else
    vacancy = datasample(vacancy_list,1);
end
end
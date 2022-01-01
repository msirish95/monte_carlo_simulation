%% ---- This is the MAIN function ----
clc;clear all;
%% Plotting Matrix
sets=3;
r=20;

A=plotting(sets,r);

B=A;
E1=energy_calculator(A);

pcolor(A)
shading flat
figure

%%  Annihilation
% c=1;
[i,j]=find(A==0);
i=i';j=j';

pores=[i;j]';
iter=size(pores,1);
for i=1:(0.9*iter)
    %     [vacancy,c]= Extract_vacancy(A,c);
    [vacancy]= Extract_vacancy(A);
    if ~(isempty(vacancy))
        A=annihilation(A,vacancy);
    end
    %         pcolor(A)
    %         pause(0.7)
end
C=A;
E2=energy_calculator(A);
pcolor(A)
shading flat

figure

%% Making liquids and solids same orientation

[i,j]=find(A>1000);%solids
core=horzcat(i,j);
for k=1:size(core)
    A(core(k,1),core(k,2))=1001;%101
end

[i,j]=find(A<1000);%liquids
liquid_free=horzcat(i,j);
[i,j]=find(A>0);
liquid_core=horzcat(i,j);
liquid=intersect(liquid_free,liquid_core,'rows');

for k=1:size(liquid)
    A(liquid(k,1),liquid(k,2))=1;
end

D=A;
E3=energy_calculator(A);
%% Pore Growth
iter1=5000000;

for i=1:iter1
    A=pore_reorientation(A);
end
E=A;
E4=energy_calculator(A);
pcolor(A)
shading flat

%% Conserved Grain Growth

iter1=5000000;

for i=1:iter1
    A=reorientation(A);
end
F=A;
E5=energy_calculator(A);
pcolor(A)
shading flat


%% solid reorietation

[i,j]=find(A==1001);%solids
core=horzcat(i,j);
for k=1:size(core)
    A(core(k,1),core(k,2))=2;
end

numb=(sets*2)^2;

for k=1:size(core,1)
    A(core(k,1),core(k,2))=randi(numb)+1;
end

G=A;
E6=energy_calculator(A);
figure
pcolor(A)
shading flat
iter2=5000000;

for i=1:iter2
    point=datasample(core,1);
    A=solid_reorientation(A,point,numb);
end

E7=energy_calculator(A);
figure
pcolor(A)
shading flat

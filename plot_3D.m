function plot_3D(C,ColorMatrix,N,Q)
%----------------------
x=zeros(N,N,N);y=x;z=x;
X=0:1/(N-1):1;
Y=X;
[xt,yt]=meshgrid(X,Y);
x=repmat(xt,[1 1 N]);
y=repmat(yt,[1 1 N]);
for count=1:(N)
    z(:,:,count)=(count-1)*ones(N,N)/(N-1);
end
%-------------------------------------------
[xyzQ] = Q_position(C,x,y,z,Q);

SqSz = 1.00*10/(N/25);

    for q = 1:Q
        if prod(size(xyzQ{1,q}))~=0           
                plot3(xyzQ{1,q}(:,1),xyzQ{1,q}(:,2),xyzQ{1,q}(:,3),'s','MarkerFaceColor',...
                    [ColorMatrix(q,:)],'MarkerEdgeColor','k','MarkerSize',SqSz)
                axis square,hold on;
            end
            xlabel('X - axis'),ylabel('Y - axis'),zlabel('Z - axis')
%             axesLabelsAlign3D,title('Grain Structure')
    end
end
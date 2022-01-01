clear all; clc;

N=25; % No of lattice points
Q=3; % No of states
iter_number=100000; % iterations number

A = orientation_3D_Matrix(N,Q);
n=size(A,1); % n=N+2
initia_energy=energy_calculator_3D(A);

% ColorMatrix=rand(Q,3); % Inputing a random color matrix
ColorMatrix=[1,1,0;0.5,1,0.6;0.135,0,1];
for iter=1:iter_number
    C=A([2:n-1],[2:n-1],[2:n-1]); % Removing the zero padding
    if iter==1
        plot_3D(C,ColorMatrix,N,Q);
        hold on
        figure;
    end
    
    [B,E] = reorientation_3D(A,Q);
    A=B;
    X(iter,1)=E;
    X(iter,2)=iter;
    
    if iter==iter_number
    plot_3D(C,ColorMatrix,N,Q);
%     hold on
%     figure
%     pause(0.0000005)
    end
    
end

hold on
figure;
energy_iterationsPlot(X);

final_energy=energy_calculator_3D(B);
function energy_iterationsPlot(X,N)

% Plotting of energy and iter from the matrix X. E is the first column and
% iter is the second. Red line indicates graph.
% X axis is energy and y axis is iterations.

plot(X(:,2),X(:,1),'-r','MarkerSize',10);
ylabel('Energy');
xlabel('Iteration number');
title('Energy vs MCS steps');
ylim([0 (N*(N-1)*2)]);
end
function analytical_appro(E,n) %Plots variation of E with Temperature

T=(0:0.25:10)'; % Temperature range and increment specified
for i = 1:size(T,1)
    Num_total=0;
    Den_total=0;
    for j=1:n
        Num_total=Num_total+E(j,1)*exp(-E(j,1)/T(i,1));
        Den_total=Den_total+exp(-E(j,1)/T(i,1));
    end
    E_average_A(i,1)=Num_total/Den_total; % Calculating average value of Energy
end
E_average_A(1,1)=0;
plot(T,E_average_A,'LineWidth',2);
hold on
xlabel('Temperature');
ylabel('Energy');
end
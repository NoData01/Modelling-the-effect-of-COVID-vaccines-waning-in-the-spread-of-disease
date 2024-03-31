clear all

N = 32657400; %population
IC =[N-263287-16664-15269011 0 263287 0 16664 15269011 0 0];
%From september 2021-->november 2021
% y(1)=S  
% y(2)=Es
% y(3)=Is 263287
% y(4)=R
% y(5)=D 16664
% y(6)=V 15269011
% y(7)=Ev
% y(8)=Iv

tend = 300;
tspan = 1:1:tend;

%% Plotting
figure(1)

[t,y] = ode15s(@covid19_w_pfizer,tspan,IC);

subplot(3,3,1), plot(t,y(:,1),'b','LineWidth',2); %S
xlabel('Time (days)')
ylabel('Number of susceptible people')
title('Number of Susceptible People vs Time')

subplot(3,3,2), plot(t,y(:,2),'c','LineWidth',2); %Es
xlabel('Time (days)')
ylabel('Number of exposed_S people')
title('Number of Exposed_S vs Time')

subplot(3,3,3), plot(t,y(:,3),'r','LineWidth',2); %Is
xlabel('Time (days)')
ylabel('Number of infected_S case')
title('Number of Infected_S case vs Time')

subplot(3,3,4), plot(t,y(:,4),'g','LineWidth',2); %R
xlabel('Time (days)')
ylabel('Number of recovered')
title('Number of Recovered vs Time')

subplot(3,3,5), plot(t,y(:,5),'k','LineWidth',2); %D
xlabel('Time (days)')
ylabel('Number of death')
title('Number of Death vs Time')

subplot(3,3,6), plot(t,y(:,6),'m','LineWidth',2); %V
xlabel('Time (days)')
ylabel('Number of vaccinated')
title('Number of Vaccinated vs Time')

subplot(3,3,7), plot(t,y(:,7),'c','LineWidth',2); %Ev
xlabel('Time (days)')
ylabel('Number of exposed_V')
title('Number of Exposed_V vs Time')

subplot(3,3,8), plot(t,y(:,8),'r','LineWidth',2); %Iv
xlabel('Time (days)')
ylabel('Number of infected_V case')
title('Number of Infected_V case vs Time')

%%
figure(2)
[t,y] = ode15s(@covid19_w_pfizer,tspan,IC);
plot(t,y(:,1))
hold on 
plot(t,y(:,2))
hold on 
plot(t,y(:,3))
hold on 
plot(t,y(:,4))
hold on
plot(t,y(:,5))
hold on
plot(t,y(:,6))
hold on
plot(t,y(:,7))
hold on
plot(t,y(:,8))
hold on
%plot(t,y) %%mix all the plot in one figure
legend('suscepted','exposed_s','infected_s','recovered','death','vaccinated','exposed_v','infected_v')

%%
figure(3)
%Vaccine waning(infected)
[t1,y1] = ode15s(@covid19_w_pfizer,tspan,IC);
[t2,y2] = ode15s(@covid19_w_astrazenica,tspan,IC);
[t3,y3] = ode15s(@covid19_w_sinovac,tspan,IC);

%Plotting
%I=Is+Iv=y(:,3)+y(:,8)
plot(t1,y1(:,3)+y1(:,8),'k','LineWidth',2)
hold on
plot(t2,y2(:,3)+y2(:,8),'b','LineWidth',2)
hold on
plot(t3,y3(:,3)+y1(:,8),'r','LineWidth',2)

grid on
xlabel('Time (days)')
ylabel('Number of Infected cases(Is+Iv)')
legend('pfizer','astrazenica','sinovac')
title('Vaccine waning(infected)')

%%
figure(4)
%Vaccine waning(death)
[t1,y1] = ode15s(@covid19_w_pfizer,tspan,IC);
[t2,y2] = ode15s(@covid19_w_astrazenica,tspan,IC);
[t3,y3] = ode15s(@covid19_w_sinovac,tspan,IC);

%Plotting

plot(t1,y1(:,5),'k','LineWidth',2)
hold on
plot(t2,y2(:,5),'b','LineWidth',2)
hold on
plot(t3,y3(:,5),'r','LineWidth',2)

grid on
xlabel('Time (days)')
ylabel('Number of Death')
legend('pfizer','astrazenica','sinovac')
title('Vaccine waning(death)')

%%
figure(5)
%Impact of vaccination programme(infected)
[t1,y1] = ode15s(@covid19_a1,tspan,IC);
[t2,y2] = ode15s(@covid19_a2,tspan,IC);
[t3,y3] = ode15s(@covid19_a3,tspan,IC);
[t4,y4] = ode15s(@covid19_a4,tspan,IC);

%Plotting
%I=Is+Iv=y(:,3)+y(:,8)
plot(t1,y1(:,3)+y1(:,8),'k','LineWidth',2)
hold on
plot(t2,y2(:,3)+y2(:,8),'r','LineWidth',2)
hold on
plot(t3,y3(:,3)+y3(:,8),'b','LineWidth',2)
hold on
plot(t4,y4(:,3)+y4(:,8),'g','LineWidth',2)
grid on
xlabel('Time (days)')
ylabel('Number of Infected cases(Is+Iv)')
legend('alpha=0','alpha=0.001','alpha=0.01','alpha=0.1')
title('The impact of vaccination programme(infected)')

%%
figure(6)
%Impact of vaccination programme(death)

[t1,y1] = ode15s(@covid19_a1,tspan,IC);
[t2,y2] = ode15s(@covid19_a2,tspan,IC);
[t3,y3] = ode15s(@covid19_a3,tspan,IC);
[t4,y4] = ode15s(@covid19_a4,tspan,IC);

%Plotting
plot(t1,y1(:,5),'k','LineWidth',2)
hold on
plot(t2,y2(:,5),'r','LineWidth',2)
hold on
plot(t3,y3(:,5),'b','LineWidth',2)
hold on
plot(t4,y4(:,5),'g','LineWidth',2)
grid on
xlabel('Time (days)')
ylabel('Number of Death')
legend('alpha=0','alpha=0.001','alpha=0.01','alpha=0.1')
title('The impact of vaccination programme(death)')

%%
figure(7)
%Impact of transmission rate(infected)

[t1,y1] = ode15s(@covid19_b1,tspan,IC);
[t2,y2] = ode15s(@covid19_b2,tspan,IC);
[t3,y3] = ode15s(@covid19_b3,tspan,IC);

%Plotting
%I=Is+Iv=y(:,3)+y(:,8)
plot(t1,y1(:,3)+y1(:,8),'k','LineWidth',2)
hold on
plot(t2,y2(:,3)+y2(:,8),'r','LineWidth',2)
hold on
plot(t3,y3(:,3)+y3(:,8),'b','LineWidth',2)
grid on
xlabel('Time (days)')
ylabel('Number of Infected cases(Is+Iv)')
legend('beta=0.5','beta=0.4','beta=0.3')
title('The impact of transmission rate(infected)')

%%
figure(8)
%Impact of transmission rate(death)

[t1,y1] = ode15s(@covid19_b1,tspan,IC);
[t2,y2] = ode15s(@covid19_b2,tspan,IC);
[t3,y3] = ode15s(@covid19_b3,tspan,IC);

%Plotting

plot(t1,y1(:,5),'k','LineWidth',2)
hold on
plot(t2,y2(:,5),'r','LineWidth',2)
hold on
plot(t3,y3(:,5),'b','LineWidth',2)
grid on
xlabel('Time (days)')
ylabel('Number of Death')
legend('beta=0.5','beta=0.4','beta=0.3')
title('The impact of transmission rate(death)')




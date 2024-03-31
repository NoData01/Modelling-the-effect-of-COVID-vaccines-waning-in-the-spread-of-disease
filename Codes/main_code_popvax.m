clear all
%From september 2021-->november 2021
% y(1)=S  
% y(2)=Es
% y(3)=Is 263287
% y(4)=R
% y(5)=D 16664
% y(6)=V 40/100*N
% y(7)=Ev
% y(8)=Iv

tend = 300;
tspan = 1:1:tend;

%% Plotting
figure(9)
%The population_vax(infected), Infected=Is+Iv=y(:,3)+y(:,8)

N = 32657400; %population
IC =[N-263287-16664-40/100*N 0 263287 0 16664 40/100*N 0 0];

[t1,y1] = ode15s(@covid19_fx_popvax,tspan,IC);

plot(t1,y1(:,3)+y1(:,8),'k','LineWidth',2)
hold on

N = 32657400; %population
IC =[N-263287-16664-60/100*N 0 263287 0 16664 60/100*N 0 0];

[t1,y1] = ode15s(@covid19_fx_popvax,tspan,IC);
plot(t1,y1(:,3)+y1(:,8),'r','LineWidth',2)
hold on

N = 32657400; %population
IC =[N-263287-16664-80/100*N 0 263287 0 16664 80/100*N 0 0];

[t1,y1] = ode15s(@covid19_fx_popvax,tspan,IC);
plot(t1,y1(:,3)+y1(:,8),'b','LineWidth',2)
grid on
xlabel('Time (days)')
ylabel('Number of Infected cases(Is+Iv)')
legend('pop vax=40%','pop vax=60%','pop vax=80%')
title('The percentage of herd immunity for covid(infected)')

%%
figure(10)
%The population_vax(death)

N = 32657400; %population
IC =[N-263287-16664-40/100*N 0 263287 0 16664 40/100*N 0 0];

[t1,y1] = ode15s(@covid19_fx_popvax,tspan,IC);
plot(t1,y1(:,5),'k','LineWidth',2)
hold on

N = 32657400; %population
IC =[N-263287-16664-60/100*N 0 263287 0 16664 60/100*N 0 0];

[t1,y1] = ode15s(@covid19_fx_popvax,tspan,IC);
plot(t1,y1(:,5),'r','LineWidth',2)
hold on

N = 32657400; %population
IC =[N-263287-16664-80/100*N 0 263287 0 16664 80/100*N 0 0];

[t1,y1] = ode15s(@covid19_fx_popvax,tspan,IC);
plot(t1,y1(:,5),'b','LineWidth',2)
grid on
xlabel('Time (days)')
ylabel('Number of Death')
legend('pop vax=40%','pop vax=60%','pop vax=80%')
title('The percentage of herd immunity for covid(death)')




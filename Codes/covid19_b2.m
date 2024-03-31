function dydt = covid19_b2(t,y)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

%% Parameter
N = 32657400;        %population 
alpha = 0.00278;    %vaccination rate
beta = 0.4;      %transmission rate
sigma = 0.89*0.9982^t;       %vaccine inefficiency
lambda = 1/7;     %average latet time for exposed to infected
kappa_s = 0.013;    %death rate of susceptible people
kappa_v = 0.007;   %death rate of vaccinated people
mu = 1/10;         %average days until recovery
tau = 0.036;      %average days until death

%% Calculations
% y(1)=S
% y(2)=Es
% y(3)=Is
% y(4)=R
% y(5)=D
% y(6)=V
% y(7)=Ev
% y(8)=Iv


dydt = [-(beta*y(1)*y(3))/N-alpha*y(1)-((1-sigma)*beta*y(1)*y(3))/N;   %S
        (beta*y(1)*y(3))/N+((1-sigma)*beta*y(6)*y(8))/N-lambda*y(2);   %Es
        lambda*y(2)-kappa_s*y(3)*tau-(1-kappa_s)*y(3)*mu;  %Is
        (1-kappa_s)*y(3)*mu+(1-kappa_v)*y(8)*mu;           %R
        kappa_s*y(3)*tau+kappa_v*y(8)*tau;        %D
        alpha*y(1)-((1-sigma)*beta*y(6)*y(8))/N-((1-sigma)*beta*y(6)*y(8))/N; %V
        ((1-sigma)*beta*y(1)*y(3))/N+((1-sigma)*beta*y(6)*y(8))/N-lambda*y(7); %Ev
        lambda*y(7)-kappa_v*y(8)*tau-(1-kappa_v)*y(8)*mu];  %Iv

      

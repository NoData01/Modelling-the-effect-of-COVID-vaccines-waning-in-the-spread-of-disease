figure(1)
x=0:30:150;
y1=89*0.9982.^x;
y2=77*0.9991.^x;
y3=76*0.9934.^x;
plot(x,y1,'-x','LineWidth',2);hold on
plot(x,y2,'-x','LineWidth',2);hold on
plot(x,y3,'-x','LineWidth',2)
grid on
datacursormode on
xlabel('Time (days)')
ylabel('The vaccine efficiency')
legend('Pfizer','AstraZeneca','Sinovac')
title('The vaccine waning over time')
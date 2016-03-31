% Acrobot Simulation from results obtained by using the TOMLAB toolbox PROPT for advanced optimal control applications in Matlab
% The formulation of the problem and the EoM can be found at Russ Tedrake. Underactuated Robotics: Learning, Planning, and Control for Efficient and Agile Machines. Working Draft of Course Notes for MIT 6.832 (Chapter 3). 

theta1 = solution.x1_p;
theta2 = solution.x3_p;
for t=1:1:81 
    
    clf
    
    o1 =  theta1(t);
    o2 =  theta1(t) + theta2(t);
    
    pm1 = [ 100 * sin(o1); -100* cos(o1)];
     
    pm2 = pm1 + [100 * sin(o2); -100 *cos(o2)];
     
    pm = [pm1 pm2];
    x = [0 pm(1,:)];
    y = [0 pm(2,:)];

hold on
plot(x,y,'b','LineWidth',3)
hold on

hold on
plot(0,0,'^',...
    'LineWidth',2,...
    'MarkerSize',13,...
    'MarkerEdgeColor','k',...
    'MarkerFaceColor','r')

axis([-300 300 -300 300])
grid
drawnow
pause(0.1)
end
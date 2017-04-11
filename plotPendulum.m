clc;clear;
M = 1;      % kg
l = 1;      % Meters
I= M*l^2;   % kg*m^2

g = 9.82;   % kg/s^2

b = 1;

theta    = -pi/2;
thetaVel = 0;
thetaAcc = 0;
dt = 0.01  % sek

figure;

thetas = [];
while 1
    f = M * g*sin(theta);
    tau = f*l - b*thetaVel;
    thetaAcc = tau/I;
    
    thetaVel = thetaVel + thetaAcc*dt;
    theta = theta + thetaVel*dt

    plot([0, l*sin(theta)],[0, l*cos(theta)]);
    hold on;
    plot(l*sin(theta), l*cos(theta),'r.','MarkerSize',20) 
    axis([-2*l 2*l -2*l 2*l]);
    hold off;

    pause(dt);
end

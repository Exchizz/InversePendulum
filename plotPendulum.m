clc;clear;

g = 9.82; % kg/s^2
theta = -pi/2;
thetaVel = 0;
thetaAcc = 0;
dt = 0.01  % sek

M_rod = 1;      % kg
l_rod = 1;      % Meters
I_rod = (1/3) * M_rod * l_rod^2;

r_disk = 0.4; % kg
M_disk = 0.200; % kg
I_0 = M_disk * r_disk^2 /2
I_disk = I_0 + M_disk * l_rod^2;

I = I_rod + I_disk;

figure;

acc = 450; % rad / sec^2

thetas = [];

DiskLineBegin = [0;0];
DiskLineEnd = [1;1];

while 1
    f_rod = (M_rod * g*sin(theta));
    f_disk = (M_disk * g*sin(theta));
    tau_g = f_rod*l_rod/2 + f_disk*l_rod

    tau_c = acc * I_0
    tau = tau_g + tau_c

    thetaAcc = tau/I
    
    thetaVel = thetaVel + thetaAcc*dt;
    theta = theta + thetaVel*dt

    plot([0, l_rod*sin(theta)], [0, l_rod*cos(theta)]);
    hold on;
    dot_ratio = 333;
    plot(l_rod*sin(theta), l_rod*cos(theta),'r.', 'MarkerSize', r_disk*dot_ratio)
    
    % Spin circle
    DiskLineEnd = rotation(deg2rad(10/2))*DiskLineEnd;
    center = [l_rod*sin(theta); l_rod*cos(theta)];
    plot([center(1) + DiskLineBegin(1), center(1) + DiskLineEnd(1)],[center(2) + DiskLineBegin(2), center(2) + DiskLineEnd(2)],'w-');

    axis([-2*l_rod 2*l_rod -2*l_rod 2*l_rod]);
    hold off;

    pause(dt);
end

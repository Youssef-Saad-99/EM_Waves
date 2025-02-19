clc; clear; close all;

lambda = 10;  
k = 2 * pi / lambda;  
omega = 2 * pi;  
t = linspace(0, 2*pi, 50);  
y = linspace(0, 4*lambda, 100);  

E0 = 1;  
H0 = 1;  

figure; hold on; grid on;
xlabel('Y-axis (Wave Propagation)');
ylabel('X-axis (Magnetic Field H)');
zlabel('Z-axis (Electric Field E)');
title('Electromagnetic Wave Propagation');

view([-45, 30]);  
axis([0 max(y) -1.5 1.5 -1.5 1.5]);

for ti = 1:length(t)
    E = E0 * cos(k * y - omega * t(ti));  
    H = H0 * cos(k * y - omega * t(ti) + pi/2);  

    cla;
    plot3(y, H, zeros(size(y)), 'r', 'LineWidth', 2);  
    plot3(y, zeros(size(y)), E, 'b', 'LineWidth', 2);  

    pause(0.05);
end

hold off;
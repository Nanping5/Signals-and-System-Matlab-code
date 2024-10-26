t = [-10:0.1:10]; 

T1 = 2 * pi;    
A1 = 2;         
g1 = A1 * (heaviside(mod(t, T1) - T1/2) - heaviside(mod(t, T1) + T1/2));


T2 = 1;        
A2 = 2;         
g2 = A2 * (heaviside(mod(t, T2) - T2/2) - heaviside(mod(t, T2) + T2/2));


T3 = 1;         
A3 = 2;         
m = 0.7;  
g3 = A3 * (heaviside(mod(t, T3) - (T3 * (1 - m) / 2)) -heaviside(mod(t, T3) + (T3 * (1 - m) / 2)));


subplot(3, 1, 1);
plot(t, g1, 'r', 'LineWidth', 2);
title('信号1: T1 = 2*pi, A = +- 2');
xlabel(' t');
ylabel('A');
grid on;

subplot(3, 1, 2);
plot(t, g2, 'b', 'LineWidth', 2);
title('信号2: T2 = 1, A =+- 2');
xlabel('t');
ylabel('A');
grid on;

subplot(3, 1, 3);
plot(t, g3, 'g', 'LineWidth', 2);
title('信号3: T3 = 1, A = +- 2, 占空比 = 70%');
xlabel(' t');
ylabel('A');
grid on;


t = -10:0.1:10;  

f1 = sin(2 * pi * t);      
f2 = 2 * sin(12 * pi * t); 

subplot(2, 2, 1);
plot(t, f1, 'r', 'LineWidth', 1);
xlabel('t');
ylabel('f1');
title('f1');
grid on;


subplot(2, 2, 2);
plot(t, f2, 'b', 'LineWidth', 1);
xlabel('t');
ylabel('f2');
title('f2');
grid on;

subplot(2, 2, 3);
plot(t, f1 + f2, 'g', 'LineWidth', 1);
xlabel('t');
ylabel('f1 + f2');
title('f1 + f2');
grid on;


subplot(2, 2, 4);
plot(t, f1 .* f2, 'k', 'LineWidth', 1); 
xlabel('t');
ylabel('f1 * f2');
title('f1 * f2');
grid on;


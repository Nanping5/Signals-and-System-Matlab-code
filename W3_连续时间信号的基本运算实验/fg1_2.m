t = -10:0.1:10;  
f = (t + 1) .* (heaviside(t + 1) - heaviside(t)); 

subplot(2, 3, 1);
plot(t, f, 'b', 'LineWidth', 1);
xlabel('t');
ylabel('f');
title('f(t)');
grid on;

subplot(2, 3, 2);
plot(t, (t - 1 + 1) .* (heaviside(t - 1 + 1) - heaviside(t - 1)), 'g', 'LineWidth', 1);
xlabel('t');
ylabel('f(t-1)');
title('f(t-1)');
grid on;


subplot(2, 3, 3);
plot(t, (2*t + 1) .* (heaviside(2*t + 1) - heaviside(2*t)), 'r', 'LineWidth', 1);
xlabel('t');
ylabel('f(2*t)');
title('f(2t)');
grid on;

subplot(2, 3, 4);
plot(t, (-t + 1) .* (heaviside(-t + 1) - heaviside(-t)), 'k', 'LineWidth', 1);
xlabel('t');
ylabel('f(-t)');
title('f(-t)');
grid on;


subplot(2, 3, 5);
plot(t, -f, 'y', 'LineWidth', 1);
xlabel('t');
ylabel('-f');
title('-f(t)');
grid on;

subplot(2, 3, 6);
plot(t, (1 - 2*t + 1) .* (heaviside(1 - 2*t + 1) - heaviside(1 - 2*t)), 'm', 'LineWidth', 1);
xlabel('t');
ylabel('f(1 - 2*t)');
title('f(1 - 2t)');
grid on;


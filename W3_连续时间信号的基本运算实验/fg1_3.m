t = -10:0.1:10;  
f = 2*t.^2 + 3*t;
df = 4*t + 3;
F = (2/3)*t.^3 + (3/2)*t.^2;
subplot(3, 1, 1);
plot(t, f, 'b', 'LineWidth', 2);
xlabel('t');
ylabel('f(t)');
title('信号 f(t)');
grid on;

subplot(3, 1, 2);
plot(t, df, 'r', 'LineWidth', 2);
xlabel('t');
ylabel("f'(t)");
title('一阶微分 ');
grid on;

subplot(3, 1, 3);
plot(t, F, 'g', 'LineWidth', 2);
xlabel('t');
ylabel('F(t)');
title('一次积分 ');
grid on;


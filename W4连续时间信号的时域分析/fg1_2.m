

y0_ZIR = [1; 1]; 


tspan = [0 10];


[t_ZIR, y_ZIR] = ode45(@myFreeODE2, tspan, y0_ZIR);

figure;
subplot(2, 1, 1);
plot(t_ZIR, y_ZIR(:,1), 'b-', 'LineWidth', 2); % 绘制 y(t)
hold on;
plot(t_ZIR, y_ZIR(:,2), 'r--', 'LineWidth', 2); % 绘制 y'(t)
xlabel('时间 t');
ylabel('零输入响应');
title('零输入响应');
legend('y(t)', 'y''(t)');
grid on;


y0_ZSR = [0; 0]; 

[t_ZSR, y_ZSR] = ode45(@myODE, tspan, y0_ZSR);

subplot(2, 1, 2);
plot(t_ZSR, y_ZSR(:,1), 'b-', 'LineWidth', 2); % 绘制 y(t)
hold on;
plot(t_ZSR, y_ZSR(:,2), 'r--', 'LineWidth', 2); % 绘制 y'(t)
xlabel('时间 t');
ylabel('零状态响应');
title('零状态响应');
legend('y(t)', 'y''(t)');
grid on;
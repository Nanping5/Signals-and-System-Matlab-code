% 定义时间范围
t = -1:0.01:1;  % 从 -1 到 1，步长为 0.01

% 计算冲击响应
h = sin(20*t)./(pi*t);  % 使用点除以处理t=0的情况

% 绘制冲击响应
figure;
plot(t, h);
grid on;
title('理想低通滤波器的冲击响应');
xlabel('时间 (s)');
ylabel('幅度');
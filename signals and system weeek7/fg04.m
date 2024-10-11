% 定义频率范围
w = linspace(-10, 10, 1000); % 从 -10 到 10 的频率范围，1000个点

% 计算傅里叶变换的幅度和相位
F = 4./(w.^2 + 4); % 幅度
amplitude = abs(F);
phase = angle(F);

% 绘制幅度谱
figure;
subplot(2, 1, 1);
plot(w, amplitude);
title('幅度谱');
xlabel('频率 (rad/s)');
ylabel('幅度');
grid on;

% 绘制相位谱
subplot(2, 1, 2);
plot(w, phase);
title('相位谱');
xlabel('频率 (rad/s)');
ylabel('相位 (弧度)');
grid on;
% 定义时间向量
Fs = 1000; % 采样频率
t = 0:1/Fs:1; % 时间向量，假设我们只观察1秒内的信号

% 定义单边指数信号
f = exp(-2*t) .* (t >= 0); % 信号定义为当t>=0时，指数衰减

% 计算傅里叶变换
F = fft(f);

% 计算频率向量
n = length(F);
w = (0:n-1)*(2*pi/n); % 角频率

% 计算幅度谱和相位谱
amplitude = abs(F/n);
phase = angle(F);

% 绘制幅度谱
figure;
subplot(2, 1, 1);
plot(w(1:n/2), amplitude(1:n/2)); % 由于对称性，只绘制一半的频率
title('幅度谱');
xlabel('频率 (rad/s)');
ylabel('幅度');
grid on;

% 绘制相位谱
subplot(2, 1, 2);
plot(w(1:n/2), phase(1:n/2));
title('相位谱');
xlabel('频率 (rad/s)');
ylabel('相位 (弧度)');
grid on;
% 定义原始周期矩形脉冲信号的参数
T = 2; % 周期
t = 0:0.01:2*T; % 时间向量

% 定义原始周期矩形脉冲信号
f1 = zeros(size(t));
f1(t >= 0 & t <= T/2) = 1;

% 计算前10个谐波的傅里叶级数系数
N = 10; % 谐波数量
a0 = (1/T) * sum(f1); % 直流分量
an = zeros(1, N);
bn = zeros(1, N);
for n = 1:N
    an(n) = (2/T) * sum(f1 .* cos(2*pi*n*t/T));
    bn(n) = (2/T) * sum(f1 .* sin(2*pi*n*t/T));
end

% 使用这些系数合成周期信号
f_syn = a0/2 + zeros(size(t));
for n = 1:N
    f_syn = f_syn + an(n)*cos(2*pi*n*t/T) + bn(n)*sin(2*pi*n*t/T);
end

% 绘制原始周期信号和合成的周期信号
figure;
subplot(2, 1, 1);
plot(t, f1);
title('原始周期矩形脉冲信号');
xlabel('时间 (s)');
ylabel('幅度');
grid on;

subplot(2, 1, 2);
plot(t, f_syn);
title('合成的周期信号');
xlabel('时间 (s)');
ylabel('幅度');
grid on;

% 绘制信号的幅度谱和相位谱
figure;
subplot(2, 1, 1);
stem(0:N, [a0/2, an], 'filled');
title('幅度谱');
xlabel('谐波编号');
ylabel('幅度');
grid on;

subplot(2, 1, 2);
stem(1:N, bn, 'filled');
title('相位谱');
xlabel('谐波编号');
ylabel('相位 (弧度)');
grid on;
% 定义原始信号
Fs = 1000;  % 采样频率
t = -1:1/Fs:1;  % 时间向量
sigma = 0.1;  % 高斯脉冲的标准差
x = exp(-(t.^2)/(2*sigma^2));  % 高斯脉冲信号

% 计算原始信号的傅里叶变换
X = fftshift(fft(x));  % 计算傅里叶变换并中心化
f = (-Fs/2:Fs/length(x):Fs/2-Fs/length(x));  % 频率向量

% 绘制原始信号的频谱
figure;
subplot(2,2,1);
plot(t, x);
title('原始信号');
xlabel('时间 (s)');
ylabel('幅度');

subplot(2,2,2);
plot(f, abs(X));
title('原始信号的频谱');
xlabel('频率 (Hz)');
ylabel('幅度');

% 定义尺度变换因子
a = 2;  % 尺度变换因子

% 进行尺度变换
x_scaled = exp(-(t/a).^2/(2*sigma^2));  % 尺度变换后的信号

% 计算尺度变换后信号的傅里叶变换
X_scaled = fftshift(fft(x_scaled));  % 计算傅里叶变换并中心化

% 绘制尺度变换后信号的频谱
subplot(2,2,3);
plot(t, x_scaled);
title('尺度变换后的信号');
xlabel('时间 (s)');
ylabel('幅度');

subplot(2,2,4);
plot(f/a, abs(X_scaled)/a);  % 按照尺度变换特性调整频率和幅度
title('尺度变换后信号的频谱');
xlabel('频率 (Hz)');
ylabel('幅度');
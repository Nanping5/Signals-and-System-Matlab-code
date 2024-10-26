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

% 定义时移量
t0 = 0.2;  % 时移量

% 进行时域平移
x_shifted = exp(-((t - t0).^2)/(2*sigma^2));  % 时移后的信号

% 计算时移后信号的傅里叶变换
X_shifted = fftshift(fft(x_shifted));  % 计算傅里叶变换并中心化

% 绘制时移后信号的频谱
subplot(2,2,3);
plot(t, x_shifted);
title('时移后的信号');
xlabel('时间 (s)');
ylabel('幅度');

subplot(2,2,4);
plot(f, abs(X_shifted));  % 绘制时移后信号的幅度频谱
title('时移后信号的频谱');
xlabel('频率 (Hz)');
ylabel('幅度');
% 定义分子和分母的系数
b = [0.1, 0, 0];
a = [0.1, 1, 2];

% 定义频率范围
w = logspace(-1, 2, 1000);  % 从 0.1 到 100，共 1000 个点

% 计算频率响应
[H, w] = freqs(b, a, w);

% 绘制幅度响应
figure;
subplot(2,1,1);
semilogx(w, 20*log10(abs(H)));
grid on;
title('二阶高通滤波器的幅度响应');
xlabel('频率 (rad/s)');
ylabel('幅度 (dB)');

% 绘制相位响应
subplot(2,1,2);
semilogx(w, angle(H));
grid on;
title('二阶高通滤波器的相位响应');
xlabel('频率 (rad/s)');
ylabel('相位 (radians)');
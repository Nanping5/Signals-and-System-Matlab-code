% 定义方波信号的参数
A = 1; % 幅度
T = 1; % 周期
t = 0:0.01:2*T; % 时间向量

% 定义方波信号
square_wave = A * square(2*pi*t/T);

% 创建一个图形窗口
figure;

% 绘制原始方波信号
subplot(3, 1, 1);
plot(t, square_wave);
title('原始方波信号');
xlabel('时间 (s)');
ylabel('幅度');
grid on;

% 傅里叶级数展开
n_max = 10; % 最大项数
for n = 1:n_max
    % 计算傅里叶级数展开
    f = zeros(size(t));
    for k = 1:n
        f = f + (4*A/pi) * (1/(2*k-1)) * sin((2*k-1)*2*pi*t/T);
    end
    
    % 绘制傅里叶级数展开的波形
    subplot(3, 1, n+1);
    plot(t, f);
    title(['傅里叶级数展开，项数 = ', num2str(n)]);
    xlabel('时间 (s)');
    ylabel('幅度');
    grid on;
end
t=[-5:0.1:5];
width1=1;
width2=2;
g1 = (heaviside(t + width1/2) - heaviside(t - width1/2));
g2 = (heaviside(t + width2/2) - heaviside(t - width2/2));
subplot(2, 1, 1);
plot(t, g1, 'r', 'LineWidth', 2);
title('矩形脉冲信号 g1(t)');
xlabel('t');
ylabel('A');
subplot(2, 1, 2);
plot(t, g2, 'b', 'LineWidth', 2);
title('矩形脉冲信号 g2(t)');
xlabel('t');
ylabel('A');
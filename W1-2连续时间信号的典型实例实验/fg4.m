t = [-0.05:0.0001:0.05];  
width = 0.01;
A = 1 / width;  
delta = A * (abs(t) <= width / 2);%|t|<=0.05
plot(t, delta, 'r', 'LineWidth', 2);
title('f=δ(t)');
xlabel(' t');
ylabel('f(t)');


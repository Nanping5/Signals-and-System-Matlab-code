
t = -5:0.1:5;


f1 = zeros(size(t));   
f1(t >= -2 & t <= 2) = 2;  

 
f2 = zeros(size(t));
f2(t >= 0 & t <= 2) = 1/2;  

f = conv(f1, f2, 'same') * 0.01;  


t_conv = t(1:length(f));  

figure;  
subplot(3, 1, 1);  
plot(t, f1, 'b-', 'LineWidth', 2);  
title('f1(t)');  
xlabel('时间 t');  
ylabel('幅度');  
grid on;  

 
subplot(3, 1, 2);  
plot(t, f2, 'r-', 'LineWidth', 2);  
title('f2(t)');  
xlabel('时间 t');  
ylabel('幅度');  
grid on;  

 
subplot(3, 1, 3);  
plot(t_conv, f, 'g-', 'LineWidth', 2);  
title('卷积 f(t) = f1(t) * f2(t)');  
xlabel('时间 t');  
ylabel('幅度');  
grid on;
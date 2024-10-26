 
num = [1]; 
den = [1 2 1]; 
sys = tf(num, den); 
figure;
subplot(2, 1, 1);
impulse(sys);  
title('单位冲击响应');  
grid on;  

subplot(2, 1, 2);  
step(sys); 
title('单位阶跃响应');  
grid on;  

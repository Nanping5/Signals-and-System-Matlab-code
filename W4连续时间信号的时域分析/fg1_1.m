
y0_full = [2; 0];  
y0_forced = [0; 0];  

tspan = [0 10]; 

[t_full, y_full] = ode45(@myODE, tspan, y0_full);  


[t_forced, y_forced] = ode45(@myODE, tspan, y0_forced);  


figure;  


subplot(3, 1, 1);
plot(t_full, y_full(:,1), 'b', 'LineWidth', 2);
hold on;  
plot(t_full, y_full(:,2), 'r', 'LineWidth', 2);   
xlabel('时间 t');  
ylabel('解 y(t) 和 y''(t)');  
legend('y(t)', 'y''(t)');  
title('全响应');  
grid on; 


[t_free, y_free] = ode45(@myFreeODE, tspan, [2; 0]);  


subplot(3, 1, 2);
plot(t_free, y_free(:,1), 'g', 'LineWidth', 2); 
hold on;  
plot(t_free, y_free(:,2), 'm', 'LineWidth', 2);   
xlabel('时间 t');  
ylabel('自由响应 y(t) 和 y''(t)');  
legend('y(t)', 'y''(t)');  
title('自由响应');  
grid on;  


subplot(3, 1, 3);
plot(t_forced, y_forced(:,1), 'b', 'LineWidth', 2);   
hold on;  
plot(t_forced, y_forced(:,2), 'r', 'LineWidth', 2);  
xlabel('时间 t');  
ylabel('受迫响应 y(t) 和 y''(t)');  
legend('y(t)', 'y''(t)');  
title('受迫响应');  
grid on;
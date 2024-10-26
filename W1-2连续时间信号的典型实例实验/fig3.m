t=[-20*pi:0.1:20*pi];
Sa =@(x)sin(x) ./ x;
f = Sa((pi * t) / 4);
f(t == 0) = 1;
plot(t,f,'r', 'LineWidth', 2);
title('f=Sa((pi*t)/4)');
xlabel('t');
ylabel('f(t)');
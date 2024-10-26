t=[-pi:0.01:pi];
f=2*sin(pi*t+pi/6);
plot(t,f,'r', 'LineWidth', 2)
title('f=2*sin(pi*t+pi/6)')
xlabel('t')
ylabel('f(t)')
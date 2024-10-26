t=[-pi:0.01:10*pi];
epsilon = t >= 0;%if t>=0,ε=1，else =0
f1=2*exp(0.3*t).*epsilon;
subplot(2,1,1);
plot(t,f1,'r', 'LineWidth', 2);
title('f1=2*exp(0.3*t).*epsilon');
xlabel('t');
ylabel('f1(t)');
f2=2*exp(-0.3*t).*epsilon;
subplot(2,1,2);
plot(t,f2,'b', 'LineWidth', 2);
title('f2=2*exp(-0.3*t).*epsilon');
xlabel('t');
ylabel('f2(t)');
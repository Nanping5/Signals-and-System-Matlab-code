t=[-5:0.1:10];
plot(t,3*t.*heaviside(t),'r', 'LineWidth', 2)
xlabel('t')
ylabel('3tε(t)')
t=[-10:0.1:10];
width=2;%tau可去任意正数
f=2*exp((t/width).^2);
plot(t,f,'r','LineWidth',2)
title(' f(t) = 2e^{-(t/τ)^2}');
xlabel(' t');
ylabel('A');
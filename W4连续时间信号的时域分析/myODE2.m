%myODE2
function dydt = myODE(t, y)
    f = t^2 * exp(t); 
    dydt = zeros(2, 1);
    dydt(1) = y(2); % y' = y2
    dydt(2) = f - 3*y(2) - 2*y(1); % y'' = f - 3y' - 2y
end
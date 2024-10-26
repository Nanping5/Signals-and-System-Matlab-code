%myFreeODE2
function dydt = myFreeODE2(t, y)
    dydt = zeros(2, 1); 
    dydt(1) = y(2); % y' = y2
    dydt(2) = -3*y(2) - 2*y(1); % y'' = -3y' - 2y
end

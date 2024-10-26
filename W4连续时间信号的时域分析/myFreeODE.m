%myFreeODE
function dydt = myFreeODE(t, y)  
    dydt = zeros(2, 1); 
    dydt(1) = y(2); % y' = y2  
    dydt(2) = -5*y(2) - 6*y(1); % y'' = -5y' - 6y  
end  

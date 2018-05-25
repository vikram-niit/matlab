function ydot = f(t, y)
    
    ydot = 6 * t^4 + 5 * t^3 + 4 * exp(t);
    
endfunction

h = 0.01;
y(1) = 0;
t(1) = 0;

for i=1:50  
    
    k1 = f(t(i), y(i));
    k2 = f(t(i) + h/2, y(i) + h * k1 / 2);
    k3 = f(t(i) + 3*h/4, y(i) + 3*h*k2/4);
    k4 = f(t(i) + h, y(i) + 2*h*k1/9 + h*k2/3 + 4*h*k3/9);
    
     y(i+1) = y(i) + (7/24) * h * k1 + (1/4) * h * k2 + (1/3) * h * k3 + (1/8) * h * k4;
     t(i+1) = t(i) + h;
end


    euler = y(51);
    
    // find exact value 
    exact = 6 * t.^5/5 + 5 * t.^4/4 + 4 * exp(t) - 4;
    
    error = abs(exact - y);

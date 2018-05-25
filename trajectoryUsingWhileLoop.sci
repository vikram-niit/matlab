function [] = trajectoryUsingWhileLoop()
    
    v0 = 20;
    g = 9.8;
    y = 0;
    
    t = 0;
    while (y>=0)
        disp('At time t = '+t+'location = '+string(y));
        t = t + 0.1;
        y = v0 - 0.5*g*t*t;
    end
    
    
endfunction

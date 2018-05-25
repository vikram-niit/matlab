function [x, y] = pgm13(a, b, n, initialCondition)
    
    h = (b-a)/n;
    y = [];
    x = [];
    
    x(1) = a;
    y(1) = initialCondition;
    
    for i=1:n      
        
        x(i+1) = x(i) + h;
        y(i+1) = y(i) + h * pgm14(x(i), y(i));        
        
    end
    
endfunction

function [sum] = pgm12(a, b, n)
    
    h = (b-a)/n;
    sum = 0;
    for i=1:n;
        
        midpoint = (a+(a+h))/2;       
        
        sum = sum + h * pgm10(midpoint);
        
        a = a+h;
                
    end
    
endfunction

function [x] = pgm17()     
       
       x0 = 10;
       x = x0;
       maxIterations = 300;
    
       
    
    for i=1:maxIterations   
        xOld = x;       
        
         f = x^2.5 - 23*x^1.5 - 50 * x + 1150;
        df = 2.5*x^1.5 - 34.5*x^0.5 -50;
           
        x = x - f/df;
        error = abs(xOld - x);       
        
        disp(i);
        disp(x);
        disp(f);
        disp(df);
       
        if(error < 10^-6)
            break; 
        end        
         
    end
       
endfunction

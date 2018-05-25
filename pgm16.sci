function [V] = pgm16(P, T)
    
    a = -1.06;
    b = 0.057;
    c = -0.0001;
    
    R = 8.314;   
    
    V0 = R*T/P;
    
    V = V0;
    maxIterations = 100;
    
    for i=1:maxIterations   
        VOld = V;          
        V = 1/P*(R*T + a*(1/V) + b*(1/V^2) + c*(1/V^3))
        error = abs(VOld - V);       
        
        disp(i);
        if(error < 10^-7)
            break; 
        end        
         
    end
    
endfunction

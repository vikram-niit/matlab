function res = e1(x)
    
    term = 1;
    sum = 1;
    i=1;
    
   trueValue = exp(x);
    
    while error<10^-10
        
        error = abs(trueValue - sum);
        
        term = term * x / i;
        sum = sum + term;    
        
    end
    
    res = sum;
    
endfunction

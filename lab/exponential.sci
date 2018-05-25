function res = exponential(x)
    
    term = 1;
    sum = 1;
    i=1;
    
    trueValue = exp(x);
    error = abs(trueValue - sum);
    
    while error>10^-10
        
        error = abs(trueValue - sum);
        
        term = term * x / i;
        sum = sum + term;    
        
        i = i+1;
        disp(sum);
        disp(error);
         disp(i);
        
        
    end
    
    res = sum;
    
endfunction

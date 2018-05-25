function [oddSum, funVal] = pgm9(x)
    
    n = size(x, 2)
    
    oddSum = 0;
    for i = 1:2:n
       oddSum = oddSum + x(i);
    end
    
    funVal = 0;
     for i = 1:n
       funVal = funVal + (-1)^(i-1)*x(i);
    end  
    
endfunction

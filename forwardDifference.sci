function[firstDerivative, h, err] = forwardDifference(x, h)
    
    firstDerivative = [];
    err = [];
    
    for(i = 1:10)
    firstDerivative = (-atan(x + 2 .* h) + 4 * atan(x+h) - 3*atan(x))./(2.*h);
    trueValue = 1/(1+(x*x));
    
    err = abs(trueValue - firstDerivative);
    
    end
    
endfunction

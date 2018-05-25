function[firstDerivative, err] = forwardDifference2(fx, h)
    
    firstDerivative = [];
    err = [];
    
    for(i = 1:10)
    firstDerivative = (-tan(x + 2 .* h) + 4 * tan(x+h) - 3*tan(x))./(2.*h);
    trueValue = (sec(x))^2;
    
    err = abs(trueValue - firstDerivative);
    
    end
    
endfunction

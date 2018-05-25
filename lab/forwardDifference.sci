function[firstDerivative] = forwardDifference(fx, h)
    
    firstDerivative = [];
   
    
    for(i = 1:4)
    firstDerivative(i) = (-fx(i + 2) + 4 * fx(i + 1) - 3*fx(i))./(2.*h);
       
    end
    
endfunction

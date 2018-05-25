function [x,n] = myCubeRoot(a,tol)
    // Use iterative algorithm to compute cube root of a real number
    // Inputs
   //    a     Value for which cube-root is to be found
    //    tol   Tolerance up to which the result is to be found
    // Outputs
    //    x     Approximate value of cube root found
    //    n     Number of iterations required by the algorithm
    
    x = 1/2;   // DO NOT CHANGE THIS!! This is initial guess. 
        
    // ---------- YOU MAY START EDITING BELOW THIS LINE ----------
    
    xnew = 1/3 * (2*x + a/(x*x));

n = 1;

while abs(x - xnew) > tol 
    x = xnew;
    xnew = 1/3 * (2*x + a/(x*x));    
    n = n + 1;
end

endfunction

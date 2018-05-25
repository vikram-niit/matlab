function [fval, jac] = pgm18(X)
    
     x1 = X(1);
     x2 = X(2);
     
     fval(1) = x1^2 + x1*x2 - x2 - 10;
     fval(2) = x2^2 + x1*x2 - x1 - 5;
     
//     disp('X(1) = '+X(1)+'X(2) = '+ X(2))
    jac = [2*x1 + x2 x1-1;
           x2-1   2*x2+x1];
           
endfunction

function [X, err] = pgm19()
    
    X0 = [1; 1];
    maxIterations = 100;
    tolX = 10^-6;
    
    X = X0;
    for i=1:maxIterations
        XOld = X;
        [fval, jac] = pgm18(X);
    
        disp(size(X));
        disp(size(fval));
        disp(size(jac));
    
         X = X - inv(jac)*fval;
         err(:,i) = abs(X - XOld);
         
         if(err(:,i)<tolX)
             break;
         end        
    end
    
    
endfunction

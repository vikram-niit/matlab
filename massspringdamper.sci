function [fval] = massspringdamper(t, y)
    
    x = y(1);
    v = y(2);
    
    c=10;
    k=2;
    m=3;
    
    
    fval(1, 1) = v;
    fval(2, 1) = -1*(c*v + k * x)/m;
    
endfunction

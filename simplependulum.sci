function [fval] = simplependulum(t, y)
    
     x = y(1);
    v = y(2);
    
    l = 98;
    g = 980;
    
    
    fval(1, 1) = v;
    fval(2, 1) = -1*(g/l)*sin(x);
    
endfunction

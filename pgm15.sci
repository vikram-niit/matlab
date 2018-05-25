function [y] = pgm15(t)   
    
    r = 0.35;
    g = 9.8;
    v0 = 20;
    
    vr = g/r;
  
     
    y = ((v0 + vr)/r)*(1-exp(-1*r*t)) - (vr*t);
endfunction

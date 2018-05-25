function [I, vector, y] = pgm11(a, b, n)
    
    h = (b-a)/n;

    vector = [0:h:2];
    y = pgm10(vector);
    
    trueValue = -0.5 .* exp(-2 * x) + 2 .* x .* sqrt(x);
    
    I = h/2 * (pgm10(vector(1)) + 2 * sum(pgm10(vector(2:n))) + pgm10(vector(n+1)));
    error = trueValue - I;
endfunction


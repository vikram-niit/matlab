// input a, b: interval
//       n: number of intervals
function[I, vector, y] =  pgm9(a, b, n)
    
    h = (b-a)/(2*n);
    
    vector = [a:h:b];
    y = pgm10(vector);
    
    interval = 2:2:(2 * n - 2);
    disp(interval);
    interval = 1:2:(2 * n - 1);
    disp(interval);
    
    disp(sum(pgm10(vector(2:2:(2 * n - 1 + 1)))));
    disp(sum(pgm10(vector(3:2:(2 * n - 2 + 1)))));
    disp(pgm10(vector(0+1)));
    disp(pgm10(vector((2 * n + 1))));
    
    I = h/3*(pgm10(vector(0+1)) + 4 * sum(pgm10(vector(2:2:(2 * n - 1 + 1)))) + 2 * sum(pgm10(vector(3:2:(2 * n - 2 + 1)))) + pgm10(vector(2 * n + 1)));
    
endfunction

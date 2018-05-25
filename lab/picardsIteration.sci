function y = picardsIteration(x0, x1, y0, N)
    
    printf("y: %f x0: %f x1: %f y0: %f N: %f\n", y, x0, x1, y0, N)
    y = y0 + x1 * integral(x0, x1, y0, N-1) - x1^3/3 + x1;
    
endfunction

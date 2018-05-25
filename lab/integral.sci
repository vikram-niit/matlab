recursionlimit(110);
function [y] = integral(x0, x1, y0, N)
    
    printf("recursion: %d N: %d\n", recursionlimit("current") - 1, N)
    
    if(N == 0)
        y = y0;       
    
    else    
       y = integral(x0, x1, y0, N-1);
      printf("y: %f x0: %f x1: %f y0: %f N: %f\n", y, x0, x1, y0, N)
       y = y0 + x1 * y - x1^3/3 + x1;        
        printf("y: %d \n", y)
    end

      
    
endfunction

function [A, B] = pgm10()
    
     i=1;
     A(1) = 1;
     B(i) = 1.25;
     while(A(i) < B(i))
         A(i+1) = 1.06 * A(i);
         B(i+1) = 1.02 * B(i);
         
         i = i + 1;
     end
    
endfunction

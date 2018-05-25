function [E] = getElementaryRowMatrix(i, j, value, numberOfRows) 
    
    // create an identity matrix
    E = eye(numberOfRows, numberOfRows);
    
    E(i, j) = value;    
    
    disp(E);
    
endfunction

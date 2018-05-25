function [E] = getElementaryRowMatrix(i, j, value, numberOfRows) 
    
    // create an identity matrix
    E = eye(numberOfRows);
    
    E(i, j) = value;    
    
endfunction

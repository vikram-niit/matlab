function [R, c] = eliminateZeroPivots(A, b)
    %% Inputs : A m*n Matrix
	%%			b column vector
	
	 %% Outputs : R m*n Matrix
	%%			  c column vector
	
    m =  size(A,1);
    n =  size(A,2);
    
    augmentedMatrix = A;
    
    augmentedMatrix(:, n+1) = b;
    
    %% for each diagonal element 
    for i=1:m
        if(A(i, i) == 0)
            for j = 1:m
                 %% add row i with row j such that A(j, i) != 0
                if(A(j, i) == 0)
                    continue;
                 else                   
                   %% Ri <- Ri + Rj
                    E = getElementaryRowMatrix(i, j, 1, m);
                    augmentedMatrix = matrixMultiply(E, augmentedMatrix);
                    
                    break;
                    
                end
            end
        end
    end
    
    R = augmentedMatrix(:, 1:n);
    c = augmentedMatrix(:, n+1);
    
end

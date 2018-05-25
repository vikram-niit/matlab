function [w] = computewforSORmethod(A, b)    
    
    
    m = size(A, 1);
    n = size(A, 2);
    
    %% compute L
    for i=1:m
        for j=1:n
            if j<i
                L(i, j) = A(i, j);
            else
                L(i, j) = 0;
            end    
            
        end        
    end
    %% compute D    
    for i=1:m
        for j=1:n
            if j==i
                D(i, j) = A(i, j);
            else
                D(i, j) = 0;
            end    
            
        end        
    end
    %% compute U   
    for i=1:m
        for j=1:n
            if j>i
                U(i, j) = A(i, j);
            else
                U(i, j) = 0;
            end    
            
        end        
    end
    
    dPlusLInverse = inv(D+L);
    T = matrixMultiply(dPlusLInverse, -1*U);
    
    disp(T);
    
    e = abs(spec(T));
    
    spectralRadius = max(e);
    
    w = 2 / (1 + sqrt(1 - spectralRadius^2));
    
end

function [x, y, norm3] = gausssidelmethod(A, b)
    
    disp(x);
    
    m = size(A, 1);
    n = size(A, 2);
    
    // compute L
    for i=1:m
        for j=1:n
            if j<i
                L(i, j) = A(i, j);
            else
                L(i, j) = 0;
            end    
            
        end        
    end
    // compute D    
    for i=1:m
        for j=1:n
            if j==i
                D(i, j) = A(i, j);
            else
                D(i, j) = 0;
            end    
            
        end        
    end
    // compute U   
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
    c = matrixMultiply(dPlusLInverse, b);
    
    disp(D+L);
    disp(inv(D+L));
    disp(T);
    disp(c);    
    
     for i=1:n
        x(i, 1) = 0;
    end
    
    y(:,1) = x;
    for i=2:100
        x = matrixMultiply(T, x) + c;  
        y(:, i) = x; 
        disp(i);
        norm3(i) = max(abs(y(:,i) - y(:,i-1)))/(max(abs(y(:,i))));
        
        if(norm3(i) < 10^-5) break;
        end
    end
    
endfunction

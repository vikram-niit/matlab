function [x] = isPositiveDefinite(A)
    
    m = size(A, 1);
    n = size(A, 2);
    
    %% assume initially the matrix is positive definite
    flag = 1;
    
    %% check determinant for each square sub matrix
    for i=1:m
        
        subMatrix = A(1:i, 1:i);
        
        determinant = det(subMatrix);
        
        %% if determinant of any one sub matrix is less than or equal to zero
        if(determinant <= 0)
            flag = 0;
        end        
    end
    
    if flag == 0 then
        x = %F
    else
        x = %T
    end
    
end

function [C] = matrixMultiply(A, B)
    
    
    m = size(A, 1);
    n = size(A, 2);
   
    x = size(B, 1);
    y = size(B, 2);
    
    for i=1:m
        for j=1:y       
            sum = 0;     
            for k=1:n
                sum = sum + A(i,k) * B(k,j);               
            end
            
            C(i,j) = sum;
                        
        end        
    end
    
    
end

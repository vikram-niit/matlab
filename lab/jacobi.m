function [x] = jacobi(A, b, TOL)

m = size(A, 1);
n = size(A, 2);

    for i=1:m
        for j=1:n
            T(i, j) = (1/A(i, i)) * (-1 * A(i, j));
        end
        
        b(i) = b(i)/(A(i, i));
    end

  
    %%disp(b);
    
    for i=1:m
        T(i, i) = 0;
    end

    %%disp(T);
    
    for i=1:n
        x(i, 1) = 0;
    end
    
   %% x(k) = Tx(k-1) + b;
   error = 999;
   k = 1;
   
   while abs(error) > TOL        
        
       
      if(k == 100)
          return;
      end
       
        for i=1:m
            sum = 0;
            for j = 1:n
                sum = sum + T(i, j) * x(j, k);
            end

            x(i, k+1) = sum + b(i);
        end        
      
        %% find norm 

        if (max(x(:, k)) ~= 0)
          error = (max(x(:, k+1)) - max(x(:, k)))/max(x(:, k));
      end
        
        disp(error);
      %% disp(T);
      %% disp(x);
        
      k = k+1;
   end
      
end
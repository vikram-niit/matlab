function pgm2(p0, TOL, N0)

%p0 = 0;
%TOL = 0.0000000001;
%N0=20;

i = 1;

while i<=N0

    p = p0 - (cos(p0)-p0)/(-1*sin(p0) - 1);
    
    
    %compute |p-p0|
    error = p-p0;
    if(error<0)
        error = -1*error;
    end
    
    disp(['iteration step = ', num2str(i), ' pvalue = ', num2str(p0), ' g(p) = ', num2str(p), ' error = ', num2str(error)]);
    
    
        if(error < TOL)
            disp(p)
            return
        end   
    
    i = i+1;
   
    p0 = p;
end
disp(['The method failed after N0 iterations, N0=', num2str(N0)])
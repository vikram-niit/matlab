function pgm3(p0, p1, TOL, N0)

%p0 = 0;
%TOL = 0.0000000001;
%N0=20;

i = 2;

 q0 = (cos(p0) - p0);
 q1 = (cos(p1) - p1); 

while i<=N0       
    
    p = p1 - q1*(p1 - p0)/(q1 - q0);
    q = cos(p) - p;
    
    %compute |p-p0|
    error = p-p0;
    if(error<0)
        error = -1*error;
    end
    
    disp(['iteration step = ', num2str(i), ' p = ', num2str(p), ' q = ', num2str(q), ' error = ', num2str(error)]);
    
    
        if(error < TOL)
            disp(p)
            return
        end   
    
    i = i+1;
    
   
    if( q*q1 < 0)
        p0 = p1;
        q0 = q1;
    end 
        
    p1 = p;
    q1 = p;
end
disp(['The method failed after N0 iterations, N0=', num2str(N0)])
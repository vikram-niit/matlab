function [p,q] = pgm3(p0, p1, TOL, N0)

//p0 = 0;
//TOL = 0.0000000001;
//N0=20;

disp(p0);
//disp(['p0 = ', p0, ' p1 ', p1, ' TOL ', TOL, ' N0 ', N0]);

i = 2;

 q0 = (cos(p0) - p0);
 q1 = (cos(p1) - p1); 

while i<=N0       
    
    p = p1 - q1*(p1 - p0)/(q1 - q0);
    q = cos(p) - p;
    
    //compute |p-p0|
    error = p-p0;
    if(error<0)
        error = -1*error;
    end
    
 //   disp(['iteration step = ', (i), ' p = ', (p), ' q = ', (q), ' error = ', (error)]);
     disp(i);
     disp(error);
    
        if(error < TOL)
            disp(p)
            //return
            break;
        end   
    
    i = i+1;
    
   
    if( q*q1 < 0)
        p0 = p1;
        q0 = q1;
    end 
        
    p1 = p;
    q1 = q;
end
//disp(['The method failed after N0 iterations, N0=', (N0)])
endfunction

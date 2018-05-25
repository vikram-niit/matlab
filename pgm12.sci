
    
     t=[0:0.04:3];
     y = pgm11(t);     
    plot(t, y, '-b');    
  
    h = (3-0)/10;
    
    t2 = [0:0.4:3];  
    y2 = pgm11(t2);
    
    disp(size(t2(2)));
    disp(size(y2));
    
    mtlb_hold on
    plot(t2, y2, 'bo');
    mtlb_hold off
   


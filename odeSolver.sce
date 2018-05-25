T0=1200;
t0=0;
t=0:240:480;
T = ode(T0,t0,t,f);
plot(t,T)


// Water  level in the tank

function ydot=f2(t, h)
    a = 0.008;
    g = 9.8;
    qi = 0.02;
    qo = a * sqrt(2 * g * h);
    A = 0.8;
    
    ydot= (qi - qo)/A;
    
endfunction



 


h0 = 0.1;
t0 = 0;
t = 0:10:60;
h = ode(T0,t0,t,f2);

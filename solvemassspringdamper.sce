y0 = [1.5;0.4];
tspan=0:0.5:20;
t0 = 0;

[ysol] = ode(y0, t0, tspan, massspringdamper);

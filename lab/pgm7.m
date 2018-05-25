function [t, w] =  pgm7(a, b, N, initialCondition)

%% INPUT endpoints a,b; integer N; initial condition initialCondition
%% OUTPUT approximation w to y at the (N+1) values of t
h = (b-a)/N;
t0 = a;
w0 = initialCondition;

t = [t0];
w = [w0];

disp(['t0 = ', num2str(t0), ' w0 = ', num2str(w0)]);


%% compute starting values using Runge-Kutta method
for(i=1:1:3)

K1 = h * pgm8(t(i),w(i));
K2 = h * pgm8(t(i) + h/2, w(i) + K1/2);
K3 = h * pgm8(t(i) + h/2, w(i) + K2/2);
K4 = h * pgm8(t(i) + h, w(i) + K3);

w(i+1) = w(i) + (1/6 * K1 + 2/6 * K2 + 2/6 * K3 + 1/6 * K4);
t(i+1) = a + i * h;

disp(['iteration step = ', num2str(i), ' w = ', num2str(w(i+1)), ' t = ', num2str(t(i+1))]);

end

for i = 4:1:N
    
    t(i+1) = a + (i) * h;
    %% Predict w(i+1)
    w(i+1) = w(i) + h/24 * (55 * pgm8(t(i), w(i)) - 59 * pgm8(t(i-1), w(i-1)) + 37 * pgm8(t(i-2), w(i-2)) - 9 * pgm8(t(i-3), w(i-3)));
    %% correct w(i+1)
    w(i+1) = w(i) + h/24 * (9 * pgm8(t(i+1), w(i+1)) + 19 * pgm8(t(i-1), w(i-1)) - 5 * pgm8(t(i-2), w(i-2)) + pgm8(t(i-3), w(i-3)));   
    
    disp(['iteration step = ', num2str(i), ' w = ', num2str(w(i+1)), ' t = ', num2str(t(i+1))]);
    
end

end
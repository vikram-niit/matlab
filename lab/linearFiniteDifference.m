function [w] = linearFiniteDifference(a0, b0, alpha, beta, N)

%% Step 1 
h = (b0-a0)/(N+1);

x = (a0 + h);
a(1) = 2 + h^2 * q(x);
b(1) = -1 + h/2 * p(x);
d(1) = -1 * h^2 * r(x) + (1 + h/2 * p(x)) * alpha;

%%Step 2

for i = 2:N-1
    
    x = a0 + i * h;  
    
    a(i) = -1 * h^2 * q(x);
    b(i) = -1 + h/2 * p(x);
    c(i) = -1 - h/2 * p(x);
    d(i) = -1 * h^2 * r(x);
    
end

%% Step 3

x = (b0 - h);

a(N) = 2 + h^2 * q(x);
c(N) = -1 - h/2 * p(x);
d(N) = -1 * h^2 * r(x) + (1 - h/2 * p(x)) * beta; 


%% Step 4
l(1) = a(1);
u(1) = b(1) / a(1);
z(1) = d(1) / l(1);


%% Step 5
for i=2:N-1
   
    l(i) = a(i) - c(i) * u(i-1);
    u(i) = b(i)/l(i);
    z(i) = (d(i) - c(i) * z(i-1))/l(i);    
end

%% Step 6
l(N) = a(N) - c(N) * u(N-1);
z(N) = (d(N) - c(N) * z(N-1))/l(N);

%% Step 7
w(1) = alpha;
w(N+1) = beta;
w(N) = z(N);

%% Step 8
for i=N-1:1     
    w(i) = z(i) - u(i) * w(i+1);        
end

%% Step 9 
for i=1:N+1 
    x = a + i * h;
    
    disp(['x=', num2str(x), 'y=', num2str(w(i))]);
end

end

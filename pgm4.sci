// Use multiple applications of Trapezoidal rule
a = 0;
b = 1;

n = 100;
h = (b-a)/n;

vector = [0:h:1];
trueValue = -0.5 * exp(-2 * x) + 2 * x * sqrt(x);

I = h/2 * (pgm6(vector(1)) + 2 * sum(pgm6(vector(2:n))) + pgm6(vector(n+1)));
error = trueValue - I;

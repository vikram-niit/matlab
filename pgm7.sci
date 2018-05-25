
// Use multiple applications of Trapezoidal rule
a = 1;
b = 10;

n = 9;
h = (b-a)/n;

vector = [1:h:10];
trueValue = 1/sqrt( 2 * x - 1);

I = h/2 * (pgm6(vector(1)) + 2 * sum(pgm6(vector(2:n))) + pgm6(vector(n+1)));
error = trueValue - I;

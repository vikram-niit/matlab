// y = x ^ 2 * e(-2 * x)
// secondDerivative = exp(-2 * x) * (2 - 8 * x + 4 * x^2)
x = 1;
h = [0.1 0.01];

trueValue = exp(-2 * x) * (2 - 8 * x + 4 * x^2);

for(i=1:1:2)
secondDerivative(i) = (pgm2(x+h(i)) - 2 * pgm2(x) + pgm2(x-h(i))) / h(i)^2;

errorValue(i) = (trueValue - secondDerivative(i));
end 

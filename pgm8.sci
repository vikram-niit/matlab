
x = [0:0.1:1];

y = x .* exp(-2 *  x);

//[maximum, index] = max(y);
[m, index] = max(y);
disp(x(index));

//Mclaurin Expansion

n = 5;
a = 0.1;

expvalue = 1.0;


vec = 1:n;
terms = a.^vec ./ cumprod(vec);

expvalue = 1 + cumsum(terms);

trueVal = exp(a);
error = abs(trueVal - expvalue);

plot(error);

hold on;

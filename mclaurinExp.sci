//Mclaurin Expansion

n = 5;
a = 0.1;

expvalue = 1.0;
currentTerm = 1.0;

for i=1:n
    currentTerm = currentTerm * a / i;
    expvalue(i+1) = expvalue(i) + currentTerm;
end

trueVal = exp(a);
error = abs(trueVal - expvalue);

function [p] =  pgm6(x, fx0)

numberOfColumns = size(fx0,1);
p = fx0(1);

h = 0.25;
s = (0.43 - 0)/h;

sum = 0;
for k = 2:numberOfColumns
    
    sFactorial = prod(1:s);
    kFactorial = prod(1:k);
    sMinusKFactorial = prod(s-k);
    
    
    

factorial = 1;
for i = 1:k
    factorial = factorial * (s - (i - 1));

end

sum = sum + factorial * fx0(k);
// sum = sum + (sFactorial)/(kFactorial* sMinusKFactorial)*fx0(k)


p = fx0(1) + sum;

end
end

function [fx0, richardsonsApproximation] = richardsonsExtrapolation(h, fx)
 
numberOfPoints = size(h, 2);

q = (h(1)/h(2));

//Fill the first column with values of fx
for i=1:numberOfPoints
   richardsonsApproximation(i,1) = fx(i);
end


// compute forward differences from the first column
j = 1;
while numberOfPoints>1
    
    for i= 1:numberOfPoints - 1
       // richardsonsApproximation(i, j+1) = richardsonsApproximation(i+1, j) - richardsonsApproximation(i, j)
       disp((h(i)/h(i+1))^2 - 1);
       disp((h(i)));
       disp((h(i+1)));
       disp(h(i)/h(i+1));
       
        richardsonsApproximation(i, j+1) = richardsonsApproximation(i+1, j) + (1/q^j - 1) * (richardsonsApproximation(i+1, j) - richardsonsApproximation(i, j)) ;
    end
    
    numberOfPoints = numberOfPoints - 1;
    j = j + 1;
end

// extract number of columns
n = size(richardsonsApproximation);
numberOfColumns = n(2);

// computer fx0 
for k=1:numberOfColumns    
    fx0(k) = richardsonsApproximation(1, k);
end


end 


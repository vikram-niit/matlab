function [fx0] = pgm5(x, fx)

numberOfPoints = size(x, 2);


//Fill the first column with values of fx
for i=1:numberOfPoints
   forwardDifferenceTable(i,1) = fx(i);
end


// compute forward differences from the first column
j = 1;
while numberOfPoints>1
    
    for i= 1:numberOfPoints - 1
        forwardDifferenceTable(i, j+1) = forwardDifferenceTable(i+1, j) - forwardDifferenceTable(i, j)
    end
    
    numberOfPoints = numberOfPoints - 1;
    j = j + 1;
end

// extract number of columns
n = size(forwardDifferenceTable);
numberOfColumns = n(2);

// computer fx0 
for k=1:numberOfColumns    
    fx0(k) = forwardDifferenceTable(1, k);
end


end 

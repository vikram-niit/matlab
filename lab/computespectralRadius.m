function [spectralRadius] = computespectralRadius(T)
    
    %%e = abs(spec(T));
    e = abs(eig(T));
    
    spectralRadius = max(e);
    
end
function dist = distanza(X)
%DISTANZA Summary of this function goes here
%   calcola la distanza tra il punto i e il punto j di una matrice MxN
    for ir= 1:length(X)
        delta=X-X(ir,:);
        dist(:,ir)=abs(sqrt(sum(delta.^2,2)));
    
    end
end
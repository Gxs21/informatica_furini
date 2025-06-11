function D = esercizio_9_funzione_1(X)
    for ir = 1:length(X)
        delta = X - X(ir,:);
        D(:,ir) = sqrt(sum(delta.^2, 2));
    end
end
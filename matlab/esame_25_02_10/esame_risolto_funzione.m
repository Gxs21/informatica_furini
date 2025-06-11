function centers = esame_risolto_funzione(X)
    inds = X(:,4) == 0;
    center_0 = mean(X(inds,1:3), 1);
    inds = X(:,4) == 1;
    center_1 = mean(X(inds,1:3), 1);
    centers = [center_0; center_1];
end
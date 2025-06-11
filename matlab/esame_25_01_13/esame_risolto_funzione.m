function closest_center_crd = esame_risolto_funzione(X)
    center = mean(X, 1);
    [dummy, closest_center_crd] = min(abs(X - center), [], 2);
end
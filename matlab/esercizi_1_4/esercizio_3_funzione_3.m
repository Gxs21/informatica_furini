function z = esercizio_3_funzione_3(X, rho)
    [rho_sort, i_sort] = sort(rho);
    D = esercizio_3_funzione_1(X);
    i_sort = i_sort(end:-1:1);
    z(i_sort(1)) = max(D, [], "all");
    for i = 2:length(rho)
        i_higher_density = i_sort(1:i_sort(i));
        dists = D(i, i_higher_density);
        z(i_sort(i)) = min(dists);
    end
end
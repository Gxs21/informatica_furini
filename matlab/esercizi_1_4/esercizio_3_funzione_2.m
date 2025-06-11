function rho = esercizio_9_funzione_2(X, r_min)
    D = esercizio_3_funzione_1(X);
    rho = sum(D < r_min, 2);
end
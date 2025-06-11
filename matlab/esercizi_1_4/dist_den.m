function Z = dist_den(X, rho)
    [rho_sort i_sort]=sort(rho);
    i_sort=i_sort(end:-1:1)
    dist=distanza(X)
    Z(i_sort(1))=max(dist, [], 'all')
    for i= 2:length(rho)
        densita_maggiore=i_sort(1:i_sort(i))
        distanze=dist(i, densita_maggiore)
        Z(i_sort(i))=min(distanze)

        


end


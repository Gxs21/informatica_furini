function rho = stima_densita(X,r_min)
%calcolo della stima della densità
dist=distanza(X);
rho=sum(dist<r_min,2);
end

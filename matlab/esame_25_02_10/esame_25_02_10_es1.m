%esame esercizio 1
% Esercizio 1 - matlab

%Definire in matlab:

%* un vettore, x, di 100 numeri equidistanti tra pigreco/3 e pigreco/6
%* una matrice, A, che contiene sulla prima riga la funzione seno del vettore x e sulla seconda riga la funzione coseno del vettore x

%Produrre un grafico del rapporto tra la prima e la seconda riga di A in funzione di x
x=linspace(pi./3, pi/6, 100);
r1=sin(x);
r2=cos(x);
A=[r1;r2]
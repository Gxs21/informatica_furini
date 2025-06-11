%esame_25_02_10_es2
%Scrivere una funzione che prende in ingresso una matrice di N punti appartenenti a due classi separate 
% e restituisce una matrice che ha come prima riga il centro dei punti della prima classe, 
% e come seconda riga il centro dei punti della seconda classe. I punti nella matrice di input sono organizzati per righe:
%  la prima colonna corrisponde alla coordinata x, la seconda alla coordinata y, la terza alla coordinata z, 
% e la quarta e' un numero intero uguale a 0 per i punti della prima classe, 1 per i punti della seconda classe.

%Applicare la funzione alla matrice X disponibile nel file data_2.mat.
X=load("data_2.mat");
fprintf("%d", centri_massa(X))
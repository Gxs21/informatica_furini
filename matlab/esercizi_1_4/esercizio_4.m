clear all; close all; clc;

% La matrice X generata nel codice sottostante (N x 2)
% contiene dei punti in uno spazio a 2 dimensioni
% Centrare le coordinate rispetto al valore medio
% Ruotare i punti di 30 gradi in senso antiorario
% Fare il grafico dei punti pre e post rotazione
%
% MATRICE DI ROTAZIONE =
%   cos(teta) -sin(teta)
%   sin(teta)  cos(teta)
% 

N = 100;
x = 5 + 10*randn(N,1);
y = 0.3 + x + 2*randn(N,1);
X = [x y];



% Calcolare la matrice di covarianza dei dati contenuti nella matrice X
% esiste la funzione cov per farlo, usare invece il calcolo matriciale


% Usare la funzione eig per calcolare autovalori e autovettore della
% matrice di covarianza

% ordinare le colonne della matrice degli autovettore a partire 
% dall'autovettore corrispondente all'autovalore a modulo maggiore


% Proiettare i dati di X sullo spazio degli autovettori e farne il grafico
% calcolare la matrice di covarianza dei dati proiettati


% Usare la funzione inv che calcola l'inverso di matrice per risolvere il
% sistema lineare:
%  2x + 7y = 8
%  5x - 4y = 3


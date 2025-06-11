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


X = X - mean(X, 1);
R = [cos(pi/6) -sin(pi/6); sin(pi/6) cos(pi/6)];
Xp = X*R';

f = figure();
ax = subplot(1,1,1);
hold on;
plot(X(:,1), X(:,2), '.k');
plot(Xp(:,1), Xp(:,2), '.r');


% Calcolare la matrice di covarianza dei dati contenuti nella matrice X
% esiste la funzione cov per farlo, usare invece il calcolo matriciale

delta = X - mean(X,1);
cov_m = (delta'*delta)/length(X); % length(X)-1 perche' sia identica a cov

% Usare la funzione eig per calcolare autovalori e autovettore della
% matrice di covarianza
[v, lambda] = eig(cov_m);

% ordinare le colonne della matrice degli autovettore a partire 
% dall'autovettore corrispondente all'autovalore a modulo maggiore
[dummy, i] = sort(abs(diag(lambda)));
v = v(:,i(end:-1:1));

% Proiettare i dati di X sullo spazio degli autovettori e farne il grafico
% calcolare la matrice di covarianza dei dati proiettati
% x = R*xe --> ...
Xe = X*v;
f = figure();
ax = subplot(1,1,1);
plot(Xe(:,1), Xe(:,2), '.k');
delta = Xe - mean(Xe,1);
covXe= (delta'*delta)/length(Xe);

% Usare la funzione inv che calcola l'inverso di matrice per risolvere il
% sistema lineare:
%  2x + 7y = 8
%  5x - 4y = 3
A = [2 7; 5 4];
b = [8; 3];
res = inv(A)*b;
res = A\b % stessa cosa

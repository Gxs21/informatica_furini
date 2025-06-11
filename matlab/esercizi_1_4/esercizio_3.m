clear all; close all; clc;

% Scrivere una funzione che prende in ingresso una matrice N x M
% contenente le coordinate di N punti in uno spazio a M dimensioni
% e restituisce una matrice N x N contenente in posizione i,j 
% la distanza tra il punto i e il punto j
       %distanza=sqrt((X(2,:).^2))
% Testare la funzione usando la matrice X definita nel codice
% sottostante
N = 500;
M = 2;
X = [-0.7+0.4*randn(N/2,2);0.5+0.3*randn(N/2,2)];
d=distanza(X);

% Scrivere una funzione che prende in ingresso:
% - una matrice con la stessa struttura descritta in precedenza
% - un valore scalare r_min
% e restituisce un vettore di N elementi (rho) in cui elemento i
% e'uguale al numero di punti la cui distanza dalla riga i della matrice
% e' inferiore a r_min (stima della densita')
%
% Usare la funzione per calcoalre la stima di densita' con r_min = 0.2
rho=stima_densita(X,0.2);
% Scrivere una funzione che prende in ingresso:
% - una matrice con la stessa struttura descritta in precedenza
% - l'output della funzione precedente (stima della densita')
% e restituisce un vettore di N elementi (z) il cui elemento i e' uguale alla
% distanza tra il punto i e il piu' vicino punto j con densita' maggiore
% 
% ATTENZIONE: per il punto a densita' piu' alta non ci sara' nessun punto a
% densita' maggiore. Per questo punto assegnare l'output uguale alla
% massima distanza tra i punti
%
% SUGGERIMENTO:
%   - trovare il vettore che ordina i punti a densita' decrescente
%   - per il punto a densita' massima assegnare l'elemento corrispondente del 
%       vettore di output uguale alla distanza massima tra i punti
%   - scorrere i punti in ordine di densita' crescente a partire dal
%       secondo (il punto a densita' piu' alta e' gia' stato sistemato)
%   - per ciascun punto trovare il vettore degli indice dei punti a densita' piu' alta
%   - trovare la distanza dal piu' vicino di questi punti
%   - assegnare il corrispondente valore dell'output uguale a questa
%       distanza minima
%
% Applicare la funzione per calcolare il vettore z per i dati precedenti


% Fare il grafico dei punti della matrice X

% Fare il grafico di z in funzione di rho


% Implementare un algoritmo costituito dai seguenti step:
%   1) Scegliere due punti a caso dalla matrice X (chiamati A e B)
%       suggerimento: usare randi per generare due indici interi con cui selezionare i punti
%   2) Definire un vettore il cui elemento i e' uquale a 0 se il
%       rispettivo punto di X e' piu' vicino ad A che a B, 1 viceversa
%   3) Aggiornare la definizione di A come il centro dei punti piu' vicini
%       ad A, e stessa operazione per B
%   4) Fare un grafico in cui vengono mostrati:
%       - i punti della matrice X usando colori diversi per quelli piu'
%       vicini ad A/B
%       - i punti A e B
%   5) Tornare al punto 2
% L'algoritmo deve fermarsi quando il numero di punti che cambia
% classificazione alla step 2 e' zero o se sono state eseguite piu' di 10
% iterazioni
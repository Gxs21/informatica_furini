clc; clear all; close all;

% Creare un vettore x di 1000 punti equidistanti nel range -5pi:5pi
% Calcolare un vettore y definito come sin(x)/x, usando una linea per il plot
% Fare il grafico di y in funzione di x
x = linspace(-5*pi, 5*pi, 1000);
y = sin(x)./x;
f = figure();
ax = subplot(1,1,1);
plot(x, y, '-r');

% Il file eserizio_2_dati_1.txt contiene la matrice A con il seguente formato
%   la prima colonna corrisponde all'eta' del paziente
%   la seconda colonna corrisponde alla pressione distolica
%   la terza colonna corrisponde alla pressione sistolica
% Fare un grafico dei valori di pressione diastolica/sistolica in funzione dell'eta'
% Usare simboli diveri per i valori sistolici/diastolici
A = load('esercizio_2_dati_1.txt','-ascii');
f = figure();
ax = subplot(1,1,1);
hold on;
plot(A(:,1), A(:,2), 'xb');
plot(A(:,1), A(:,3), '+r');

% Il file esercizio_2_dati_2.txt ha il seguente formato:
%   colonna 0 = numero intero da 0 a 5 che indica l'indice della popolazione
%       cellulare
%   colonna 1 = numero intero uguale a 0/1 se la riga contiene rispettivamente 
%       dato di fluorescenza rossa/verde
%   colonna 2 = la fluorescenza misurata (float)
% Definire dui vettore G/R che contengono le fluorescenze medie verde/rossa 
% nelle varie popolazioni (l'elemento i del vettore G deve essere la fluorescenza media
% verde delle cellule della popolazione i-1).
% Fare 2 grafici (a barre, ma anche normali... era solo per fare vedere tipi di grafici diversi) 
% che riportano la fluorescenza media verde/rossa nelle diverse popolazioni
A = load('esercizio_2_dati_2.txt','-ascii');
for i = 1:6
    R(i) = mean(A(A(:,1) == (i-1) & A(:,2) == 0,3));
    G(i) = mean(A(A(:,1) == (i-1) & A(:,2) == 1,3));
end
f = figure();
ax1 = subplot(2,1,1);
bar(1:6, G);
ax2 = subplot(2,1,2);
bar(1:6, R);
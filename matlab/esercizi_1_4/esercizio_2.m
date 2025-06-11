clc; clear all; close all;

% Creare un vettore x di 1000 punti equidistanti nel range -5pi:5pi
% Calcolare un vettore y definito come sin(x)/x, usando una linea per il plot
% Fare il grafico di y in funzione di x
x=linspace(-5.*pi,5.*pi,1000);
y=sin(x)./x;
f=figure();
ax=subplot(1,1,1);
plot(x,y);
% Il file eserizio_2_dati_1.txt contiene la matrice A con il seguente formato
%   la prima colonna corrisponde all'eta' del paziente
%   la seconda colonna corrisponde alla pressione distolica
%   la terza colonna corrisponde alla pressione sistolica
% Fare un grafico dei valori di pressione diastolica/sistolica in funzione dell'eta'
% Usare simboli diveri per i valori sistolici/diastolici
A=load("esercizio_2_dati_1.txt");
x=A(:,1);
y=A(:,2);
z=A(:,3);
f=figure();
ax=subplot(1,1,1);
hold on;
plot(x,y,marker='o', linestyle='none', color='yellow');
plot(x,z, 'ob');
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
B=load("esercizio_2_dati_2.txt");
%[index_gr, ir]=B([0,2],
G=[mean(B(B(:,2)>0 & B(:,1)==0,3)) sum(B(B(:,2)>0 & B(:,1)==1,3))./sum(B(B(:,2)>0 & B(:,1)==1,2)) mean(B(B(:,2)>0 & B(:,1)==2,3)) mean(B(B(:,2)>0 & B(:,1)==3,3)) mean(B(B(:,2)>0 & B(:,1)==4,3)) mean(B(B(:,2)>0 & B(:,1)==5,3))]
R=[mean(B(B(:,2)==0 & B(:,1)==1)) sum(B(B(:,2)==0 & B(:,1)==1,3))./sum(B(B(:,2)==0 & B(:,1)==1,2)==0) mean(B(B(:,2)==0 & B(:,1)==2,3)) mean(B(B(:,2)==0 & B(:,1)==3,3)) mean(B(B(:,2)==0 & B(:,1)==4,3)) mean(B(B(:,2)==0 & B(:,1)==5,3))]
f=figure();
ax=subplot(1,1,1)
hold on;
x=0:5;
plot(x,G, 'xg');
plot(x, R, 'or');
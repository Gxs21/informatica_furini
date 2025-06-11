clear all; close all; clc;

% Utilizzando l'operatore : creare i seguenti vettori:
%   a = 3 4 5 6
%   b = 1.0 1.5 2.0 2.5 3.0
%   c = 10 9 8 7 6 … 9
%   d = 1 2 3 … 10 9 8 7 … 1
a=3:1:6;
b=1.0:0.5:3.0;
c=(10:-1:0);
d=[1:1:10 9:-1:1];

% Creare un nuovo vettore contenente gli elementi di c in ordine inverso
e=c(end:-1:1);
% creare un vettore riga di 10 elementi casuali (funzione rand)
% salvare gli ultimi 3 elementi in un nuovo vettore
f=rand(1,10);
g=f(end-2:end);
% Creare un vettore di 201 punti equidistanti tra 0 e 100
% salvare gli elementi di indice pari in un nuovo vettore
% salvare gli elementi di indice dispari in ordine inverso in un nuovo vettore
h=linspace(0, 100, 201);
i=h(1:2:end);
j=h(end:-2:1);
% Creare la seguente matrice (usando un formalismo il piu' compatto possibile):
% 3     4   5   6
% 1.1 1.2 1.3 1.4
% 2.9 2.8 2.7 2.6
% 9    12  15  18
% assegnare la prima riga al vettore r1
% assegnare la prima colonna al vettore c1
% costruire una nuova matrice contenente le righe 1 e 3 e le colonne 4, 3, 1 (in questo ordine)
% costruire una nuova matrice con le colonne in ordine inverso
A=[a; 1.1:0.1:1.4; 2.9:-0.1:2.6; 9:3:18];
% Definire due vettori, v1 e v2, ciascuno di 10 numeri interi random tra 0 e 20 (funzione randi)
v1=[randi([0,20],10,1)];
v2=[randi([0,20],10,1)];
% Calcolare il numero di elementi di v1 superiori ai corrispondenti
% elementi di v2
maggiori=v1>v2;
num_maggiori=sum(maggiori);
num_maggiori_2=sum(v1>v2);

% Definire un vettore v3 il cui elemento i e' uguale al massimo tra v1(i) e
% v2(i) (usare la funzione max())
v3=max(v1,v2);
% Definire una matrice, A, 4 x 7 di interi random nell'intervallo -10,10
A_4_7=[randi([-10,10],4,7)];
% Costruire un vettore che contiene gli elementi dei bordo di A a partire
% dall'elemento 1,1 in senso antiorario
bordo=[A_4_7(:,1)' A_4_7(end,2:end) A_4_7(end-1:-1:1,end)' A_4_7(1,end-1:-1:2)];
% Definire una matrice, A, 7x6 di numeri random campionati dalla
% distribuzione uniforme nell'intervallo 0,1 (funzione rand)
A_7_6=[rand(7,6)];
% Definire uguale a 10 tutti i valori di A superiori a 0.5
% Definire uguale a -10 tutti i valori di A inferiori o uguali a 0.5
A_7_6(A_7_6>0.5)=10;
A_7_6(A_7_6<0.5)=-10;
% Scrivere un'espressione booleana per verificare che tutti i valori di A
% siano uguali a 10 o -10 (usare la funzione all)
check=all((A_7_6==10 | A_7_6==-10), 'all');
% Definire una matrice 5x5 tale che A(i,j) = 2*i*j
A_5_5=2*[1:5]'*[1:5];
% Definire una matrice 5x5 tale che A(i,j) = i+j
A_5_5=[1:5]'+[1:5];
% Definire una matrice 5x5 tale che A(i,j) = 2*(i*(j+3))*(i+j)
A_5_5=2*([1:5]'*([1:5]+3).*([1:5]'+[1:5]));
% Definire un vettore riga di 10 elementi, z, contenenti valori casuali 
% generati con la funzione rand
% Definire un vettore il cui elemento i e' uguale a z(i+1)-z(i)
% Definire una matrice 10x10 il cui elemento i,j e' uguale a z(i) - z(j)
% Definire una matrice 10x10 il cui elemento i,j e' uguale a z(j) - z(i)
z=rand(1,10);
w=z(2:end)-z(1:end-1);
X=z'-z;
Y=z-z';
% Generare un vettore, x, contenente n valori random (n=100) a distribuzione
% normale (funzione randn) con media 3 e deviazione standad 0.2
% Generare un vettore y contenente n valori random a distribuzione
% normale con media -1 e deviazione standad 0.15
% Generare un vettore z contenente n valori random a distribuzione
% normale con media 7 e deviazione standad 1
n=100;
x=3+0.2*randn(n,1);
y=-1+0.2*randn(n,1);
z=7+1*randn(n,1);
% Creare una matrice A contenente i vettori x,y,z come colonne
% Calcolare media e deviazione standard delle colonne di A e verificare che
% i valori coincidano con i valori attesi
A=[x y z];
media=mean(A,1);
deviazione=std(A,1);
% Definire un vettore dist contenente la norma delle righe di A
% Mostrare a monitor le cordinate x, y, z della riga a norma massima e il
% valore della norma
dist=sum(A.^2,2).^0.5;
length(dist);
[massima i]=max(dist);
fprintf('%s \n', A(i,:));
% Definire una matrice D il cui elemento i,j e' uguale al prodotto scalare
% tra la riga i e la riga j di A
% Individuare l'indice delle righe di A il cui prodotto scalare ha valore
% assoluto min (funzione abs). Non considerare il prodotto scalare di una
% riga con se stessa (Suggerimento: modificare i valori lungo la diagonale
% di D in modo che non possano essere selezionati come minimo).
% Mostrare a monitor le coordinate delle due righe corrispondenti al
% prodotto scalare minimo
% Attenzione: min() restituisce l'indice lineare, deve essere trasformato
% negli indici di riga e colonna
D= A * A';
D=D+max(A,[], "all")*eye(n);
[min, i]=min(abs(D), [], "all");
[x, y]=ind2sub(size(D), i);
fprintf('%d %d', x,y);
% Definire una matrice X il cui elemento i,j coindice con A(i,1) - A(j,1)
% Definire una matrice Y il cui elemento i,j coindice con A(i,2) - A(j,2)
% Definire una matrice Z il cui elemento i,j coindice con A(i,3) - A(j,3)
X=A(:,1)-A(:,1)';
Y=A(:,2)-A(:,2)';
Z=A(:,3)-A(:,3)';
% Definire una matrice D2 il cui elemento i,j conicide con la distanza tra
% la riga i e la riga j di A (sfruttare le matrici X, Y, Z)
D2=(X.^2+Y.^2+Z.^2);
% Per ciascuna riga di A individuare il numero di righe che distano meno di
% 1.5 (esclusa la riga stessa)
count=sum(D2<1.5, 2)-1
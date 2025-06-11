clear all; close all; clc;

% esercizio 1
x = linspace(pi/6,pi/3,1000);
A = [sin(x); cos(x)];
figure();
subplot(1,1,1);
plot(x, A(1,:)./A(2,:),'-');

% % esercizio 2
load 'data_2.mat';
cs = esame_risolto_funzione(X);

% % esercizio 3
B = randn(1000,3);
z_piano_1 = 2*B(:,1) - B(:,2);
z_piano_2 = B(:,1) - 2*B(:,2);
flag_in_between = (B(:,3) > z_piano_1) & (B(:,3) < z_piano_2);
n = sum(flag_in_between);
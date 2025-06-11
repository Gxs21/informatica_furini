clear all; close all; clc;

% esercizio 1
vms = linspace(0,100,1000);
vkmh = vms*3.6;
flag = vkmh > 50;
A = [vms; vkmh; flag]';

% esercizio 2
load 'data.mat';
crd = esame_risolto_funzione(X);

% esercizio 3
z_piano = 2*X(:,1) - X(:,2);
flag_above = X(:,3) > z_piano;
n_above = sum(flag_above);
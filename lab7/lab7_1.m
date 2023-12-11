clc;
clf;
clear;
csv = csvread('punktman.csv');

function a = scaling (Sx, Sy)
  a = [Sx,0,0;0,Sy,0;0,0,1];
endfunction 
%
macierz = scaling(0.1,0.2);

[rows, cols] = size(csv);
csv_out = [csv, ones(rows,1)];

csv_out = macierz*csv_out';
csv_out = csv_out'
plot(csv_out(:,1), csv_out(:,2), 'o');
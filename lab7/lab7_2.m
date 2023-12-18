clc;
clf;
clear;
csv = csvread('punktman.csv');

function a = trans (Tx, Ty)
  a = [1,0,Tx;0,1,Ty;0,0,1];
endfunction
%
avgX = mean(csv(:,1));
avgY = mean(csv(:,2));

macierz = trans(-avgX, -avgY);
[rows, cols] = size(csv);
csv_out = [csv, ones(rows,1)];
csv_out = macierz * csv_out';
csv_out = csv_out';
plot(csv_out(:,1), csv_out(:,2), 'o');


clc;
clf;
clear;
csv = csvread('punktman.csv');

function a = obrot (obr)
  %zamias cos i sin ---> cosd i sind
  a = [cosd(obr),-sind(obr),0;sind(obr),cosd(obr),0;0,0,1];
endfunction
%
macierz = obrot(-60);
[rows, cols] = size(csv);
csv_out = [csv, ones(rows,1)];
csv_out = macierz * csv_out';
csv_out = csv_out';
plot(csv_out(:,1), csv_out(:,2), 'o');

clc;
clf;
clear;
csv = csvread('punktman.csv');

function a = trans (Tx, Ty)
  a = [1,0,Tx;0,1,Ty;0,0,1];
endfunction
%
function a = scaling (Sx, Sy)
  a = [Sx,0,0;0,Sy,0;0,0,1];
endfunction 
%
function a = obrot (obr)
  %zamias cos i sin ---> cosd i sind
  a = [cosd(obr),-sind(obr),0;sind(obr),cosd(obr),0;0,0,1];
endfunction
%
% obraz dosuniety do punktu (0,0)
minY = min(csv(:,2));
minX = min(csv(:,1));
macierz = trans(-minX, -minY);
[rows, cols] = size(csv);
csv_out = [csv, ones(rows,1)];
csv_out = macierz * csv_out';
csv_out_1 = csv_out';

% lustrzane odbicie
csv_out = csv_out_1;
macierz_s = scaling(1,-0.5);
csv_out_odbicie = macierz_s * csv_out';
csv_out_odbicie = csv_out_odbicie';
plot(csv_out_1(:,1), csv_out_1(:,2), 'o');
hold on;
plot(csv_out_odbicie(:,1), csv_out_odbicie(:,2), 'o');

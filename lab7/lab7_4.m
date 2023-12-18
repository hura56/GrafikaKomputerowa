clc;
clf;
clear;
csv = csvread('punktman.csv');

function a = scaling (Sx, Sy)
  a = [Sx,0,0;0,Sy,0;0,0,1];
endfunction 
%
function a = trans (Tx, Ty)
  a = [1,0,Tx;0,1,Ty;0,0,1];
endfunction
%
function a = obrot (obr)
  %zamias cos i sin ---> cosd i sind
  a = [cosd(obr),-sind(obr),0;sind(obr),cosd(obr),0;0,0,1];
endfunction
%
avgX = mean(csv(:,1));
avgY = mean(csv(:,2));

macierz_scaling = scaling(0.01,0.01);
macierz_trans = trans(-avgX, -avgY);
macierz_obrot = obrot(90);

macierz_obrobki_calkowitej = macierz_scaling*macierz_obrot*macierz_trans;
[rows, cols] = size(csv);
csv_out = [csv, ones(rows,1)];
csv_out = macierz_obrobki_calkowitej * csv_out';
csv_out = csv_out';
plot(csv_out(:,1), csv_out(:,2), 'o');

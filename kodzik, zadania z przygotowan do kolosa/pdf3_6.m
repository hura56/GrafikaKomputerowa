clear;
clf;
clc;
img = double(imread('rzeczka2.png'));
wspKontrastu = 60;
LUT = 127.5+((0:255)-127.5)*((255+wspKontrastu)/255)^2;
LUT(LUT>255) = 255;
LUT(LUT<0) = 0;
%zastosowanie LUT
img_kontrast = LUT(img + 1);
%wyswietlanie
imshow(img_kontrast/255);
title('kontrast');
figure;
imshow(img/255);
title('org img');

%wykres
figure;
plot((0:255), LUT);
title('LUT kontrast');
xlabel('indeks');
ylabel('wartosc');

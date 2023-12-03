clear;
clf;
clc;
img = double(imread('rzeczka2.png'));

%tworze tablice lut dla jasn+50
LUT = (0:255) + 50;
LUT(LUT>255) = 255;
LUT(LUT<0) = 0;
img_jasne = LUT(img + 1);

%przycinanie wartosci
img_jasne(img_jasne>255) = 255;
img_jasne(img_jasne<0) = 0;

imshow(img/255);
title('org');

figure;
imshow(img_jasne/255);
title('jasn+50 z LUT');

figure;
plot((0:255), LUT);
title('LUT dla jasn +50');
xlabel('indeks');
ylabel('wartosc');
grid on;

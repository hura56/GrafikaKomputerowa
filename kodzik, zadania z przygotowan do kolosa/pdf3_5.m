clear;
clf;
clc;
img = double(imread('rzeczka2.png'));
gamma = 1.5;
LUT = (((0:255)/255).^(1/gamma))*255;
%zastosowanie LUT na img
img_out = LUT(img + 1);
%przyciecie wartosci
img_out(img_out>255) = 255;
img_out(img_out<0) = 0;
%wyswietlenie
imshow(img/255);
title('org');

figure;
imshow(img_out/255);
title('LUT z gamma 1.5');
%wykres
figure;
plot((0:255), LUT);
title('LUT gamma 1.5');
xlabel('indeks');
ylabel('wartosc');
grid on;

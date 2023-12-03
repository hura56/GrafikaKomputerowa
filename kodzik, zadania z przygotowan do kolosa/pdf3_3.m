clear;
clf;
clc;
img = double(imread('rzeczka2.png'));
%jasnosc -50
img_ciemne = img - 50;
%przycinanie
img_ciemne(img_ciemne>255) = 255;
img_ciemne(img_ciemne<0) = 0;
%jasnosc +50
img_jasne = img + 50;
%przycinanie
img_jasne(img_jasne>255) = 255;
img_jasne(img_jasne<0) = 0;
%wyswietlanie
imshow(img_ciemne/255);
title('jasnosc -50');
figure;
imshow(img/255);
title('org img');
figure;
imshow(img_jasne/255);
title('jasnosc +50');


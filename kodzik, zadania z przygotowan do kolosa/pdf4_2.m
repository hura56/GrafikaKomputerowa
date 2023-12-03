clear;
clf;
clc;
img = double(imread('rzeczka.jpg'));
%wyciaganie kolorw
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);
%SzaroscSrednia
srednia = (r + g + b) / 3;
%SzaroscSzary
szary = 0.2126*r + 0.7152*g + 0.0722*b;
%porownania vps i v2 * 3
img_vps = abs(szary - srednia);
img_v2 = 3 * (szary - srednia) + 127.5;
img_v2(img_v2>255) = 255;
img_v2(img_v2<0) = 0;
imshow(img_vps*4/255);
title('vps');
figure;
imshow(img_v2/255);
title('v2*3');
figure;
imshow(szary/255);
title('szary');
figure;
imshow(srednia/255);
title('srednia');


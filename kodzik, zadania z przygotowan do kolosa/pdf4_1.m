clear;
clf;
clc;
img = double(imread('rzeczka.jpg'));
gamma = 1.5;
img_out = ((img/255).^(1/gamma))*255;
img_vps = abs(img_out - img);
%mnoznik tego porownania wpisuje sie w tym miejscu
img_v2 = 3 * (img_out - img) + 127.5;
img_v2(img_v2>255) = 255;
img_v2(img_v2<0) = 0;
imshow(img_vps*4/255);
title('vps');
figure;
imshow(img_v2/255);
title('v2');

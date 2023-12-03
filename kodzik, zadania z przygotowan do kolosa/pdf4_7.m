clear;
clf;
clc;
img = double(imread('rzeczka.jpg'));
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
Y = 0+0.299*R+0.587*G+0.114*B;
CB = 128-0.168736*R-0.331264*G+0.5*B;
CR = 128+0.5*R-0.418688*G-0.081312*B;
noweCB = 128+(CB-128)*1.5;
noweCB(noweCB>255) = 255;
noweCB(noweCB<0) = 0;
noweCR = 128+(CR-128)*1.5;
noweCR(noweCR>255) = 255;
noweCR(noweCR<0) = 0;

noweR = Y + 1.402*(noweCR-128);
noweG = Y-0.344136*(noweCB-128)-0.714136*(noweCR-128);
noweB = Y+1.772*(noweCB-128);

img_out = img;
img_out(:,:,1) = noweR;
img_out(:,:,2) = noweG;
img_out(:,:,3) = noweB;

img_vps = 10*abs(img_out-img);
img_v2 = 10*(img_out-img)+127.5;
img_vps(img_vps>255) = 255;
img_vps(img_vps<0) = 0;
img_v2(img_v2>255) = 255;
img_v2(img_v2<0) = 0;

imshow(img_out/255);
title('kolory 1.5');

figure;
imshow(img_vps/255);
title('vps *10');

figure;
imshow(img_v2/255);
title('v2 *10');

figure;
imshow(img/255);
title('img org');


clear;
clf;
clc;
img = double(imread('rzeczka.jpg'));
R = 255;
G = 255;
B = 0;
img_out = img;
img_out(:,10:50,1) = R;
img_out(:,10:50,2) = G;
img_out(:,10:50,3) = B;
imshow(img_out/255);

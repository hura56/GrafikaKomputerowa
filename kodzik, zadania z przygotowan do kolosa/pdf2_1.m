clear;
clf;
clc;
img = double(imread('plaza1.png'));
%wyciagniecie R G i B z img
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
img_out = img;
%zamiana czerwonego z niebieskim w img_out
img_out(:,:,1) = B;
img_out(:,:,2);
img_out(:,:,3) = R;
imshow(img_out/255);

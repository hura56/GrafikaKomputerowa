clear;
clf;
clc;
img = double(imread('rzeczka.jpg'));
img_out = 255 - img;
imshow(img_out/255);

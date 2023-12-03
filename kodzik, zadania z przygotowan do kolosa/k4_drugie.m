clear;
clf;
clc;
img = imread('rzeczka.jpg');
img_db = double(img);
LUT = zeros(1,256);
G = img_db(:,:,2);
avgG = round(mean(vec(G)));
LUT(1:avgG) = (222/avgG) * (1:avgG);
LUT(avgG+1:256) = 222;
newG = LUT(G+1);
img_out = img_db;
img_out(:,:,2) = newG;
imshow(img_out/255);disp([0:255;LUT])

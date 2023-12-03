clear;
clf;
clc;
img = imread('rzeczka.jpg');
img_db = double(img);
G = img_db(:,:,2);
avg = round(mean(vec(G)));
LUT = zeros(1,256);
LUT(1:avg) = 1.9646*((1:avg));
LUT(avg+1:256) = 222;
img_out = img_db;
newG = LUT(G+1);
img_out(:,:,2) = newG;
imshow(img_out/255);disp([0:255;LUT])
